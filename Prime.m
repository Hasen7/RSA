function [x,y] = Prime(p1,p2)
% %UNTITLED3 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
p=[p1,p2];%10000��20000֮��ȡ����
a=primes(p(1));%С��10000������
b=primes(p(2));%С��20000������
c=setxor(a,b);%10000��20000֮�������
%������������
x=c(round(1+(numel(c)-1)*rand()))%xΪ����
y=c(round(1+(numel(c)-1)*rand()));
%��ʼ������1000���ڵ�����
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
% %����ҳ�һ���������p
% while(1)
%   i=rand()*(index-1);
%   if i>10
%       break;
%   end
% end
% %---------------------------------------------------
% %����ҳ�һ���������q,��p��=q
% while(1)
%     j=rand()*(index-1);
%     if j>10 && round(j+1)~=round(i+1)
%         break;
%     end
% end  
% x=zs(round(i+1));%���������
% y=zs(round(j+1));%���������
end

