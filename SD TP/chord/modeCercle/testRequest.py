import socket
import json
from chord_tools import *


def choiceRequest(json_data, node) :
    if json_data['request'] == 'QUERY' :
        print("UNE REQUETE POUR TROUVER LA VALEUR D'UN ID A ETE DONNEE")
        node.lookup(json_data['ip'],json_data['port'],json_data['id'])
    if json_data['request'] == 'LOOKUP' :
        print("LOOKUP D'UNE VALEUR DANS UN NOEUD")
        node.lookup(json_data['ip'],json_data['port'],json_data['id'])        
    if json_data['request'] == 'RESPONSE' :
        print("Résultat : ",json_data['value'])        
    if json_data['request'] == 'JOIN' :        
        print("UN NOEUD VEUT REJOINDRE LE CERCLE")
        node.randId(json_data['ip'],json_data['port'])
    if json_data['request'] == 'CHECK' :
        print("CHECK D'UN NOEUD")
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
        print("NOEUD AJOUTÉ")
    if json_data['request'] == 'UPDATE' :    
        node.ipSuiv = json_data['new_ip']
        node.portSuiv = json_data['new_port']
        node.idSuiv = json_data['new_id']
        print("UN NOEUD A ETE AJOUTÉ")