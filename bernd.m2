R = QQ[a, b, q, t, p1111, p1110, p1101, p1100, p1011, p1010, p1001, p1000, p0111, p0110, p0101, 
p0100, p0011, p0010, p0001, p0000, MonomialOrder=> Eliminate 4,
Degrees => {
1,1,1,1,
8,8,8,8,
8,8,8,8,
8,8,8,8,
8,8,8,8}];

I = ideal(
a^4*t^4-p1111, 
a^4*b^3*t+2*a^4*b^2*q*t+a^4*b^2*t^2+a^4*b*q^2*t+a^4*b*q*t^2+a^4*b*t^3+a^3*b^4*t
+3*a^3*b^3*q*t+3*a^3*b^2*q^2*t+a^3*b*q^3*t-p1110, 
a^4*b^2*t^2+a^4*b*q*t^2+a^4*b*t^3+a^3*b^3*t^2+2*a^3*b^2*q*t^2+a^3*b*q^2*t^2-
p1101, 
a^4*b^3*q+2*a^4*b^3*t+a^4*b^2*q^2+2*a^4*b^2*q*t+a^4*b^2*t^2+a^3*b^4*q+2*a^3*b^4
*t+3*a^3*b^3*q^2+5*a^3*b^3*q*t+2*a^3*b^2*q^3+2*a^3*b^2*q^2*t+a^2*b^4*q^2+2*a^2*
b^4*q*t+a^2*b^4*t^2+2*a^2*b^3*q^3+2*a^2*b^3*q^2*t+a^2*b^2*q^4-p1100, 
a^4*b*t^3+a^3*b^2*t^3+a^3*b*q*t^3-p1011, 
a^4*b^3*t+a^4*b^2*q*t+a^4*b^2*t^2+a^3*b^4*t+3*a^3*b^3*q*t+a^3*b^3*t^2+2*a^3*b^2
*q^2*t+a^3*b^2*q*t^2+a^2*b^4*q*t+a^2*b^4*t^2+2*a^2*b^3*q^2*t+a^2*b^3*q*t^2+a^2*
b^2*q^3*t-p1010, 
a^4*b^2*t^2+a^3*b^3*t^2+2*a^3*b^2*q*t^2+a^2*b^3*q*t^2+a^2*b^3*t^3+a^2*b^2*q^2*t
^2-p1001, 
a^4*b^3*t+a^3*b^4*t+3*a^3*b^3*q*t+2*a^2*b^4*q*t+a^2*b^4*t^2+3*a^2*b^3*q^2*t+a*b
^4*q^2*t+a*b^4*q*t^2+a*b^4*t^3+a*b^3*q^3*t-p1000, 
a^3*b*t^4-p0111, 
a^3*b^3*t^2+a^3*b^2*q*t^2+a^3*b^2*t^3+a^2*b^4*t^2+2*a^2*b^3*q*t^2+a^2*b^2*q^2*t
^2-p0110, 
a^3*b^2*t^3+a^2*b^3*t^3+a^2*b^2*q*t^3-p0101, 
a^3*b^3*t^2+a^2*b^4*t^2+2*a^2*b^3*q*t^2+a*b^4*q*t^2+a*b^4*t^3+a*b^3*q^2*t^2-
p0100, 
a^2*b^2*t^4-p0011, 
a^2*b^3*t^3+a*b^4*t^3+a*b^3*q*t^3-p0010, 
a*b^3*t^4-p0001, 
b^4*t^4-p0000);

--I = ideal( selectInSubring(1,gens gb(I,DegreeLimit=>24)));
--betti mingens I
--I = ideal( selectInSubring(1,gens gb(I,DegreeLimit=>32)));
--betti mingens I
I = ideal( selectInSubring(1,gens gb(I)));
betti mingens I
toString mingens I
dim I
T = QQ[p1111, p1110, p1101, p1100, p1011, p1010, p1001, p1000, p0111, p0110, p0101, p0100, p0011, p0010, p0001, p0000];
f = map(T,R,{0,0,0,0,p1111, p1110, p1101, p1100, p1011, p1010, p1001, p1000, p0111, p0110, p0101, p0100, p0011, p0010, p0001, p0000});
I = f(I);
dim I, degree I
