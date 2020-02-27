function [flag] = is_primes(x,y)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
if x<y
    tmp=x;
    x=y;
    y=tmp;
end
while(true)
    z=mod(x,y)
    if(z==0)
        break;
    else
        x=y;
        y=z;
    end
end
if(y==1)
    flag=true;
else
    flag=false; 
end

