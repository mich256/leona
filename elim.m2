load "binarystring.m2"
load "asep.m2"

n=3

lov = (gvar(n))#0
S = QQ[a,b,q,lov,MonomialOrder=>Eliminate 3]
F = map(S,R)
I = ideal((gvar(3))#1)
I = ideal( selectInSubring(1,gens gb(I)));
dim I, degree I
