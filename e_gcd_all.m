function [x,y]= e_gcd_all(e,r,b)
if e==b
     x=0;
     y=1;
  return;
end
[x1,y1]=e_gcd_all(mod(r,e),e,b);
x=y1;
y=(1-r*y1)/e;
end
