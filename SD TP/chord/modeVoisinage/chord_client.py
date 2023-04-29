#! /usr/bin/python3

import socket
import threading
from chord_tools import *

host = socket.gethostname()
port=7000

#SSH : pc-u3-305-10

node = MyNode()

node.id= 100
node.ip = 'localhost'
node.port = 7500
node.ipPrec = 0
node.portPrec =0 
node.idPrec =0
node.ipSuiv = 0
node.portSuiv = 0
node.idSuiv =0
node.values = {}

def printer():
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as serversocket:
        serversocket.bind(('', port))
        serversocket.listen(5)
        print('listening on port:', serversocket.getsockname()[1])
        while True:
            (clientsocket, address) = serversocket.accept()
            json_data = json_recv(clientsocket)
            print(json_data)
            


# data = [{'test':22}, 'other test', 88]
# for _ in range(3):
#     json_send('localhost', 8002, data)
#     print("Data envoyée")


print("envoie query")
print(query(host,port,4))
