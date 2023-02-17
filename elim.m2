load "binarystring.m2"
load "asep.m2"

n=3

lov = (gvar(3))#0
for var in lov do (
    promote(var, R);
    );
I = ideal((gvar(3))#1)
dim I, degree I
