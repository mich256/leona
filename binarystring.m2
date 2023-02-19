load "asep.m2"
f = n -> (
l_n = [];
if n == 1 then l_n=[["0",E],["1",D]]
else
for i in f(n-1) do (
    l_n = l_n|[[i#0|"0",(i#1)*E],[i#0|"1",(i#1)*D]];
    );
return l_n
)
gvar = n -> (
    var = {};
    ideall = {};
    for i in f(n) do (
	R = R[p_(i#0)];
	var = append(var,p_(i#0));
	ideall = append(ideall, (p_(i#0))-((W*(i#1)*V)_(0,0)));
	);
    return {var,ideall}
    )
