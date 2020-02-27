function x= e_gcd(e,r)
if(e>r)
    error('the fist argument should be lower then the second.');
    return;
end
[x3,x2]=e_gcd_all(e,r,0);
if x2>0
    x=x2;
else
    [x3,x]=e_gcd_all(e,r,1);
end
end