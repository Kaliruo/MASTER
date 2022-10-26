param fichier := "u40_00.bpa" ;

param instance :=  read fichier as "1s" use 1 ;
do print "instance : " , instance ;
param capacite := read fichier as "1n" skip 1 use 1 ;
do print "capacite : " , capacite ;
param nbObj := read fichier as "2n" skip 1 use 1;
do print "nbObj : " , nbObj ;
set Objets := { 0 to nbObj-1 by 1 } ;
set Boite := { 0 to nbObj-1 by 1 } ;
set tmp [ <i > in Objets ] := {read fichier as "<1n>" skip 2+i use 1} ;
param taille [ <i > in Objets ] := ord(tmp[i],1,1);
var x[Objets*Boite] binary;
var y[Boite] binary;

minimize y : sum<j> in Boite : y[j];
subto allInBoite : forall<i> in Objets : sum<j> in Boite : x[i,j] ==1;
subto capaBoite : forall<j> in Boite : sum<i> in Objets : taille[i]*x[i,j] <= capacite;
subto oneInBoite : forall<j> in Boite : forall<i> in Objets : x[i,j] <= y[j];

