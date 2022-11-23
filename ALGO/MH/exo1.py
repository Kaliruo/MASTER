import random
import numpy as np
import copy

n=6
#tab =[]
tab=[[-17, 10, 10, 10, 0, 20],[10, -18, 10, 10, 10, 20],[10, 10, -29, 10, 20, 20],[10, 10, 10, -19, 10, 10],[0, 10, 20, 10, -17, 10],[20, 20, 20, 10, 10, -28]]

n=len(tab)

def create_X(n) :
    X=[]
    for i in range(n) :
        X.append(random.randint(0,1))
    return X

#X=X(n)
X=[1,1,0,1,0,0]

def f(tab, X) :
    f=0
    for i in range(n) :
        for j in range(n) :
            f=f+tab[i][j]*X[i]*X[j]
    return f



res=f(tab, X)

def meilleur_voisin(tab, X) :
    Xp=[]
    for i in range(len(tab)) :
        Xp.append(X[i])
    Xp[0]=1-Xp[0]
    min=Xp.copy()
    Xp[0]=1-Xp[0]

    for i in range(1,len(tab)) :
        Xp[i]=1-X[i]
        if (f(tab,Xp)< f(tab, min)) :
            min=Xp.copy()
        Xp[i]=1-Xp[i]
    
    return min

res=meilleur_voisin(tab, X)
#print("res=",res)
    
def steepest_HC(tab, X) :
    MAX_depl=10
    nb_depl=0
    STOP=False
    while (nb_depl< MAX_depl or not(STOP)) :
        Xp=meilleur_voisin(tab, X)
        if (f(tab, Xp)< f(tab,X)) : 
            X=Xp.copy()
        else : 
            STOP=True
        nb_depl=nb_depl+1
    return X

res=steepest_HC(tab,X)
#print(res)

def steepest_HC2(tab) :
    MAX_essais= 5
    minimum =[]
    for i in range(MAX_essais) :
        X=create_X(len(tab))
        print(X)
        minimum.append(steepest_HC(tab, X))
        
    return minimum

res=steepest_HC2(tab)
print(res)    
