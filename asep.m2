load "binarystring2.m2"

n = 3
N = 4
R = QQ([a,b,q]|gvar(n)|[MonomialOrder => Eliminate 3,
	Degrees => {
	    1,1,1,
	    5,5,
	    5,5,
	    5,5,
	    5,5}]);

d = mutableMatrix(R,N,N)
e = mutableMatrix(R,N,N)
w = mutableMatrix(R,1,N)
v = mutableMatrix(R,N,1)
for j from 1 to N-1 do d_(j-1,j)=a
for i from 0 to N-1 do (
for j from 0 to i do (
foo = 0;
for r from 0 to j-1 do foo=foo+binomial(i-j+r,r)*q^r;
e_(i,j)=b^(i-j+1)*
(binomial(i,j)*q^j+
a*foo);
);
)
D = matrix(d)
E = matrix(e)
w_(0,0)=1
W = matrix(w)
for i from 0 to N-1 do v_(i,0) = 1
V = matrix(v)
