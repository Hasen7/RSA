clc;
times=3;%nΪ���ô���
output=zeros(3,3);
for i=1:times
   [n1,e1,d1] = get_keys();
    output(i,:)= [n1,e1,d1];
end
result = unidrnd(3);%����һ�����ֵΪN�����������result��resultΪ1��N֮��

m=[2,4,5];%����
hm=m(result);
n=output(result,1);
e=output(result,2);
d=output(result,3);

%-----------------------------------------
%�����ܵ���Ϣ
info=hm;
disp(info);
%----------------------------------------
%����ַ�������
[row,col]=size(info);
for k=1:col
    en_info(k)=sym(uint8(info(k)));
end

disp('before sended,the info is:');
disp(en_info);


%���ݲ��ù�Կ���м���--------------------
tic;%���ܼ�ʱ����ʼ
for k=1:col
    tmp(k)=sym(mod(en_info(k)^e,n));
end
disp('after encrypted,the info is:');
disp(tmp);  
toc;%���ܼ�ʱ������
%���ݲ���˽Կ����------------------------
tic;%���ܼ�ʱ����ʼ
for k=1:col 
    den_info(k)=mod(tmp(k)^d,n);
end
%�з�������ת�����ַ�--------------------
for k=1:col 
    den_info_c(k)=uint8(den_info(k));
end
disp('after decrypted,the info is:');
disp(sprintf('%s',den_info_c));
disp(den_info);
toc;%���ܼ�ʱ������
%--------------------------------------
user=0;
for i=1:times
   if(m(i)==den_info_c)
       user=i;
   end
end
disp(user);
disp('���û�����')

;
