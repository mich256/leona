f = n -> (
l = [];
if n == 1 then l=["0","1"]
else
for i in f(n-1) do (
    l = l|[i|"0",i|"1"];
    );
return l
)
    
