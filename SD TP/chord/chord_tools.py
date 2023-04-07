import socket
import json

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


#-------------# GET

#Requête du client pour la recherche d'une valeur dans le cercle Chord 
#used by the (external) node making the request
def query(ip, port, id) : 
    data = {'request':'QUERY',
            'ip' : ip,
            'port' : port,
            'id' : id,
    }
    json_send(ip, port, data)


#Cherche la valeur dans le cercle
#used by nodes within the chord
def lookup(ip, port, id) : 
    data ={'request' : 'LOOKUP',
		'ip' : ip,
        'port' : port,
        'id' : id 
	}
    json_send(ip, port, data)

#Donne la réponse au client
#used by the node owning the requested value (or not). ‘present’ is a boolean, ‘value’ is optional
def response(id, present, value) : 
    data ={'request' : 'RESPONSE',
		'id' : id,
        'present' : present,
        'value' : value 
	}    


#-------------# PUT

#if the node does not own the key, send it to the next node. No acknowledgement 
def set(key,value) :
    data ={'request' : 'SET',
		'key' : key,
        'value' : value 
	}    
    json_send(key, value)
    


