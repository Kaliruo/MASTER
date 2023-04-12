#! /usr/bin/python3

import socket
from chord_tools import *

host = socket.gethostname()

#My SSH : pc-u3-305-09
ipSuiv = "pc-u3-305-10"
portSuiv = ""
ipPrec =  "pc-u3-305-10"
portPrec = ""
values= {}
myKey = 200


with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as serversocket:
    serversocket.bind(('', 8001))
    serversocket.listen(5)
    print('listening on port:', serversocket.getsockname()[1])
    while True:
        (clientsocket, address) = serversocket.accept()
        json_data = json_recv(clientsocket)
        print(json_data)

        json_send('localhost', 9000, 42)



#-------------# GET

#Requête du client pour la recherche d'une valeur dans le cercle Chord 
#used by the (external) node making the request
def query(ip, port, id) : 
    #ipFin=ipPrec
    lookup(ip, port, id)


#Cherche la valeur dans le cercle
#used by nodes within the chord
def lookup(ip, port, id, ipFin) : 
    res=0
    if host == ipFin :
        for cle,valeur in values.items() : 
            if cle == id : 
                res= values[self.key]
                response(id, True, res,ip,port) 
                break
        response(id,False, null,ip,port)

    else :   
        for cle,valeur in values.items() :
            if cle == id : 
                res= values[self.key]
                response(id, True, res, ip, port)
            else :
                data ={'request' : 'LOOKUP',
                    'ip' : ip,
                    'port' : port,
                    'id' : id 
                }
        json_send(ipSuiv,portSuiv, data)

#Donne la réponse au client
#used by the node owning the requested value (or not). ‘present’ is a boolean, ‘value’ is optional
def response(id, present, value, ip, port) : 
    data ={'request' : 'RESPONSE',
		'id' : id,
        'present' : present,
        'value' : value 
	}    
    json_send(ip,port,data)


#-------------# PUT

#if the node does not own the key, send it to the next node. No acknowledgement 
def set(key,value) :

    flag = 0
    for cle, valeur in values.items():
        if key == cle :
            values[key] = value
            flag = 1
            break
    if flag == 0 :        
        data ={'request' : 'SET',
            'key' : key,
            'value' : value 
        } 
        json_send(self.ipSuiv, self.portSuiv, data)



        
