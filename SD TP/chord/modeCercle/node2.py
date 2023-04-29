import socket
from chord_tools import *
from testRequest import *

host = socket.gethostname()

node = MyNode()

node.id= 50
node.ip = socket.gethostname()
node.port = 8002
node.ipPrec = 'localhost'
node.portPrec = 9001
node.idPrec = 200
node.ipSuiv = 'localhost'
node.portSuiv = 9001
node.idSuiv = 200
node.values = {40:255}
node.liNode= [200,50]

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as serversocket:
    serversocket.bind(('', node.port))
    
    #node.set(4,44)
    
    serversocket.listen(5)
    print('listening on port:', serversocket.getsockname()[1])
    while True:
        (clientsocket, address) = serversocket.accept()
        json_data = json_recv(clientsocket)
        print(json_data)
        choiceRequest(json_data,node)
