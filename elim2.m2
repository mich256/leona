load "asep2.m2"

rela = n -> (
    pols = {};
    for i in f(n) do (
	prod = W;
	for j in i do (
	    if j == "0" then prod = prod*E
	    else prod = prod*D
	    );
	prod = (prod*V)_(0,0);
	pols = append(pols,p_i-prod);
	);
    return pols
    )
I = ideal(rela(n));
I = ideal(selectInSubring(1,gens gb(I)));
--I = ideal(selectInSubring(1,gens gb(I,DegreeLimit=>9)));
--betti mingens 
--toString mingens
--dim I
--degree I
--T = QQ(gvar(n))
--f = map(T,R,{0,0,0}|toList(gvar(n)))
--I = f(I)
