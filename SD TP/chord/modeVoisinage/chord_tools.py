import socket
import json
import random

def json_recv(clientsocket):
    data = b''
    while True:
        tmp = clientsocket.recv(1024)
        if tmp == b'':
            break
        data += tmp
    return json.loads(data)
            
def json_send(ip, port, data):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((ip, port))
        s.send(json.dumps(data).encode())


#Requête du client pour la recherche d'une valeur dans le cercle Chord 
#used by the (external) node making the request
def query(ip, port,ip2,port2, id) : 
    data = {'request':'QUERY',
            'ip' : ip,
            'port' : port,
            'id' : id,
    }
    json_send(ip2, port2, data)
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.bind(('', port))
        s.listen(5)
        print('listening on port:', s.getsockname()[1])
        while True:
            (clientsocket, address) = s.accept()
            send = json_recv(clientsocket)
            if send['request'] == 'RESPONSE' :
                print("La valeur est :")
                return send['value']
            
def join(ip, port,ip2,port2) :
    data = {'request':'JOIN',
            'ip' : ip,
            'port' : port
    }
    json_send(ip2, port2, data)
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.bind(('', port))
        s.listen(5)
        print('listening on port:', s.getsockname()[1])
        while True:
            (clientsocket, address) = s.accept()
            send = json_recv(clientsocket)
            if send['request'] == 'OK' :                
                return send
        
        
class MyNode :
    
    def __init__(self) :
        self.ipSuiv = 0
        self.portSuiv = 0
        self.idSuiv = 0
        self.ipPrec =  0
        self.portPrec = 0
        self.idPrec = 0
        self.values= {}
        self.ip = 0
        self.port = 0
        self.id = 0
        self.liNode = {}
        
    def isChild(self,id) : 
        
        if (self.idPrec > self.id) :
            if ((id <= self.id) or id > (self.idPrec)) :
                return 1
            else : 
                return 0
        else : 
            if (id <= self.id and id > self.idPrec) :
                return 1
            else : 
                return 0
            
            
    #-------------# GET

    #Cherche la valeur dans le cercle
    #used by nodes within the chord
    def lookup(self,ip, port, id) : 
        res=0 
        if self.isChild(id) : 
            if (id in self.values) :
                #print("VALEURS LOOKUP:",self.values[id])
                self.response(id, True, self.values[id], ip, port)
            else :
                self.response(id,False, "", ip , port )
        else :
            data ={'request' : 'LOOKUP',
                'ip' : ip,
                'port' : port,
                'id' : id 
            }
            json_send(self.ipSuiv,self.portSuiv, data)

    #Donne la réponse au client
    #used by the node owning the requested value (or not). ‘present’ is a boolean, ‘value’ is optional
    def response(self,id, present, value, ip, port) : 
        data ={'request' : 'RESPONSE',
            'id' : id,
            'present' : present,
            'value' : value 
        }    
        json_send(ip,port,data)


    #-------------# PUT

    #if the node does not own the key, send it to the next node. No acknowledgement 
    def set(self,key,value) :
        if self.isChild(key) : 
            self.values[key] = value
        else :        
            data ={'request' : 'SET',
                'key' : key,
                'value' : value 
            } 
            json_send(self.ipSuiv, self.portSuiv, data)
            
                    
    #-------------# UPDATE
    
    def randId(self,ip, port) : #en admettant que notre premier noeud est un "super noeud" et qu'on demande qu'a lui des join
        if len(self.liNode) == 65536 :
            self.nav(ip, port)
        else :
            num = random.randint(0,65535)
            while num in self.liNode :
                num = random.randint(0,65535)
            self.check(ip,port,num)
                
        
        
    #call rand() to generate ‘id’ if the first node, then send to the correct node        
    def check(self, ip, port, id) :
        if self.isChild(id) : 
            self.ok(self.ipPrec, self.portPrec,self.idPrec,self.ipSuiv,self.portSuiv,self.idSuiv,id, self.values,ip,port)
            
        else :        
            data ={'request' : 'CHECK',
                'ip' : ip,
                'port' : port ,
                'id' : id
            } 
            json_send(self.ipSuiv, self.portSuiv, data)
    
   
    
    
    #“NotAvailable”, sent to the external node asking to join
    def nav(self, ip, port) :
        data ={'request' : 'NAV'}
        json_send(ip, port, data)
    
    #sent to the external node asking join
    def ok(self, ipPred, portPred, idPred, ipSuc, portSuc, idSuc, id, data, ip, port) :
        newValues = {}        
        for key in self.values : 
            if key <= id :
                newValues[key]=self.values[key]
            if key > self.id :
                newValues[key]=self.values[key]
        
        for key in newValues :
            self.values.pop(key)
            
        self.liNode.append(id)  
          
        data ={'request' : 'OK',
            'id' : id,
            'ip' : ip,
            'port' : port,
            'ipPrec' : self.ipPrec,
            'portPrec' : self.portPrec,
            'idPrec' : self.idPrec,
            'ipSuiv' : self.ip,
            'portSuiv' : self.port,
            'idSuiv' : self.id,
            'values' : newValues,
            'liNode' : self.liNode
            
        }    
        json_send(ip,port,data)
        
        self.update(ip,port,id)
       
        
        
        
    #sent to the previous node : if that node is impacted, update its NT and send to the previous node again (else: stop)
    def update(self, ipNew, portNew, idNew) :
        if self.ipPrec != self.ip :
            data ={'request' : 'UPDATE',
                'new_ip' : ipNew,
                'new_port' : portNew,
                'new_id' : idNew                
            }    
            json_send(self.ipPrec,self.portPrec,data)
            
        self.ipPrec = ipNew
        self.portPrec = portNew
        self.idPrec = idNew
        


