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

printer(node)
