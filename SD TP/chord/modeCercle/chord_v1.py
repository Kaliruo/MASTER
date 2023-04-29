#! /usr/bin/python3

import socket
from chord_tools import *

host = socket.gethostname()

#My SSH : pc-u3-305-09

node = MyNode()

node.id= 200
node.ip = socket.gethostname()
node.port = 9001
node.ipPrec = 'localhost'
node.portPrec = 8002
node.idPrec = 50
node.ipSuiv = 'localhost'
node.portSuiv = 8002
node.idSuiv = 50
node.values = {70:500}



with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as serversocket:
    serversocket.bind(('', node.port))
    
    #node.set(204,44)
    
    serversocket.listen(5)
    print('listening on port:', serversocket.getsockname()[1])
    while True:
        (clientsocket, address) = serversocket.accept()
        json_data = json_recv(clientsocket)
        print(json_data)
        if json_data['request'] == 'QUERY' :
            node.lookup(json_data['ip'],json_data['port'],json_data['id'])
        if json_data['request'] == 'LOOKUP' :
            node.lookup(json_data['ip'],json_data['port'],json_data['id'])
        if json_data['request'] == 'JOIN' :
            node.randId(json_data['ip'],json_data['port'])


