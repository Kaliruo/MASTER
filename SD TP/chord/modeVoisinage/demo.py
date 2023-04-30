import socket
from chord_tools import *

node = MyNode()

node.id= 100
node.ip = socket.gethostname()
node.port = 7500
node.ipPrec = 0
node.portPrec =0 
node.idPrec =0
node.ipSuiv = 0
node.portSuiv = 0
node.idSuiv =0
node.values = {}
node.liNode=[]

print(query(node.ip,node.port,'localhost',8002,40))
print(join(node.ip,node.port,'localhost',8002))