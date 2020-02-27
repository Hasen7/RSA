function [x,y] = Prime(p1,p2)
% %UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
p=[p1,p2];%10000到20000之间取素数
a=primes(p(1));%小于10000的素数
b=primes(p(2));%小于20000的素数
c=setxor(a,b);%10000到20000之间的素数
%素数的随机序号
x=c(round(1+(numel(c)-1)*rand()))%x为所求
y=c(round(1+(numel(c)-1)*rand()));
%初始化生成1000以内的质数
% index=1;
% zs(1)=2;
% for i=3:1000;
%    for j=2:i-1
%        p=mod(i,j); %===i%j
%        if p==0
%            break;
%        elseif j==i-1
%             index=index+1;
%             zs(index)=i;  
%         end
%    end
% end
% %---------------------------------------------------
% %随机找出一个大的质数p
% while(1)
%   i=rand()*(index-1);
%   if i>10
%       break;
%   end
% end
% %---------------------------------------------------
% %随机找出一个大的质数q,且p！=q
% while(1)
%     j=rand()*(index-1);
%     if j>10 && round(j+1)~=round(i+1)
%         break;
%     end
% end  
% x=zs(round(i+1));%查表获得质数
% y=zs(round(j+1));%查表获得质数
end

