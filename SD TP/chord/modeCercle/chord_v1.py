#! /usr/bin/python3

import socket
from chord_tools import *

host = socket.gethostname()


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
node.liNode= [200,50]


with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as serversocket:
    serversocket.bind(('', node.port))
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
        if json_data['request'] == 'RESPONSE' :
            print(json_data['value'])
        if json_data['request'] == 'JOIN' :
            node.randId(json_data['ip'],json_data['port'])
        if json_data['request'] == 'CHECK' :
            node.check(json_data['ip'],json_data['port'],json_data['id'])
        if json_data['request'] == 'NAV' :
            print("Impossible de créer un noeud (Cercle plein)")
        if json_data['request'] == 'OK' :
            node.id = json_data['id']
            node.ip = json_data['ip']
            node.port = json_data['port']
            node.ipPrec = json_data['ipPrec']
            node.portPrec = json_data['portPrec']
            node.idPrec = json_data['idPrec']
            node.ipSuiv = json_data['ipSuiv']
            node.portSuiv = json_data['portSuiv']
            node.idSuiv = json_data['idSuiv']
            node.values = json_data['values']
            node.liNode = json_data['liNode']
        if json_data['request'] == 'UPDATE' :    
            node.ipSuiv = json_data['new_ip']
            node.portSuiv = json_data['new_port']
            node.idSuiv = json_data['new_id']