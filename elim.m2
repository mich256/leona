load "binarystring.m2"
load "asep.m2"

n=3

lov = (gvar(n))#0
I = ideal((gvar(3))#1)
(flattenedR, flatteningMap) = flattenRing R
S = newRing(flattenedR, MonomialOrder=>Eliminate(3))
SI = sub(I,S)
J = eliminate(SI,{a,b,q})
