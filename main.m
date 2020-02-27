clc;
times=3;%n为调用次数
output=zeros(3,3);
for i=1:times
   [n1,e1,d1] = get_keys();
    output(i,:)= [n1,e1,d1];
end
result = unidrnd(3);%产生一个最大值为N的随机正整数result，result为1到N之间

m=[2,4,5];%明文
hm=m(result);
n=output(result,1);
e=output(result,2);
d=output(result,3);

%-----------------------------------------
%待加密的信息
info=hm;
disp(info);
%----------------------------------------
%获得字符串长度
[row,col]=size(info);
for k=1:col
    en_info(k)=sym(uint8(info(k)));
end

disp('before sended,the info is:');
disp(en_info);


%数据采用公钥进行加密--------------------
tic;%加密计时器开始
for k=1:col
    tmp(k)=sym(mod(en_info(k)^e,n));
end
disp('after encrypted,the info is:');
disp(tmp);  
toc;%加密计时器结束
%数据采用私钥解密------------------------
tic;%解密计时器开始
for k=1:col 
    den_info(k)=mod(tmp(k)^d,n);
end
%有符号数字转换成字符--------------------
for k=1:col 
    den_info_c(k)=uint8(den_info(k));
end
disp('after decrypted,the info is:');
disp(sprintf('%s',den_info_c));
disp(den_info);
toc;%解密计时器结束
%--------------------------------------
user=0;
for i=1:times
   if(m(i)==den_info_c)
       user=i;
   end
end
disp(user);
disp('号用户发送')

;
