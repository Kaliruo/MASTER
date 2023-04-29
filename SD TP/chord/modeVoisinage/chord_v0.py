#! /usr/bin/python3

import socket
from chord_tools import *

#host = socket.gethostname()

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as serversocket:
    serversocket.bind(('', 9000))
    serversocket.listen(5)
    print('listening on port:', serversocket.getsockname()[1])
    while True:
        (clientsocket, address) = serversocket.accept()
        json_data = json_recv(clientsocket)
        print(json_data)

        json_send('localhost', 9000, 42)
