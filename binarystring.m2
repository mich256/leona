load "asep.m2"
f = n -> (
l = [];
if n == 1 then l=[["0",E],["1",D]]
else
for i in f(n-1) do (
    l = l|[[i#0|"0",(i#1)*E],[i#0|"1",(i#1)*D]];
    );
return l
)
gvar = n -> (
    var = [];
    ideall = [];
    for i in f(n) do (
	var = append(var,p_(i#0));
	R = R[p_(i#0)];
	ideall = append(ideall, (p_(i#0))-((W*(i#1)*V)_(0,0)));
	);
    return [var,ideall]
    )
