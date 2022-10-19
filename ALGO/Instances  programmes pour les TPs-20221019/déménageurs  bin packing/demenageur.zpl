# Une instance de sac a dos simple à 12 objets numérotés de 0 à 11

param capacite := 9;
set Objets := { 0 to 23 by 1 } ;
set Boite := { 0 to 23 by 1 } ;
param taille[Objets] :=
	<0> 6, <1> 6, <2> 5, <3> 5, <4> 5, <5> 4, <6> 4, <7> 4, <8> 4, <9> 2, <10> 2, <11> 2, <12> 2, <13> 3, <14> 3, <15> 7, <16> 7,<17> 5, <18> 5, <19> 8, <20> 8, <21> 4, <22> 4, <23> 5;
var x[Objets*Boite] binary;
var y[Boite] binary;

minimize y : sum<j> in Boite : y[j];
subto allInBoite : forall<i> in Objets : sum<j> in Boite : x[i][j] =1;
subto capaBoite : forall<j> in Boite : sum<i> in taille : taille[i]*x[i,j] <= capacite;
subto oneInBoite : forall<j> in Boite : sum<i> in taille: x[i,j]>0 <= y[j];
# subto domain : forall<i> in Objets : 0 <= x[i] <= 1 ;
