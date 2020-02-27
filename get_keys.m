function [n,e,d] = get_keys()
index=1;
zs(1)=2;
for i=3:1000;
   for j=2:i-1
       p=mod(i,j); %===i%j
       if p==0
           break;
       elseif j==i-1
            index=index+1;
            zs(index)=i;  
        end
   end
end
%---------------------------------------------------
%随机找出一个大的质数p
while(1)
  i=rand()*(index-1);
  if i>10
      break;
  end
end
%---------------------------------------------------
%随机找出一个大的质数q,且p！=q
while(1)
    j=rand()*(index-1);
    if j>10 && round(j+1)~=round(i+1)
        break;
    end
end  
x=zs(round(i+1));%查表获得质数
y=zs(round(j+1));%查表获得质数
n=x*y;
r=(x-1)*(y-1);
while(1)
    e=zs(round(rand()*(index-1))+1);%这里找出的e是质数
    if(mod(r,e)~=0)    %只要r不是e的倍数就满足条件
        break;
    end
end
if(mod(r,e)~=0)
    d=e_gcd(e,r);
end
end

