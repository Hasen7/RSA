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
%����ҳ�һ���������p
while(1)
  i=rand()*(index-1);
  if i>10
      break;
  end
end
%---------------------------------------------------
%����ҳ�һ���������q,��p��=q
while(1)
    j=rand()*(index-1);
    if j>10 && round(j+1)~=round(i+1)
        break;
    end
end  
x=zs(round(i+1));%���������
y=zs(round(j+1));%���������
n=x*y;
r=(x-1)*(y-1);
while(1)
    e=zs(round(rand()*(index-1))+1);%�����ҳ���e������
    if(mod(r,e)~=0)    %ֻҪr����e�ı�������������
        break;
    end
end
if(mod(r,e)~=0)
    d=e_gcd(e,r);
end
end

