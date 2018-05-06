clear
sigma=1;
rate=1;
b=0;
% db_1=6;
% [itera,change_itera]=main(sigma,db_1,rate,b);
db=1;
sigma_all=0.5:0.01:4;
rate_all=0.01:0.001:1;
sig_num=length(sigma_all);
itera_all=zeros(sig_num,1);
change_itera_all=zeros(sig_num,1);
for i=1:sig_num
[itera_all(i),change_itera_all(i)]=main(sigma_all(i),db,rate,b);
end
figure(3);
plot(sigma_all',itera_all,'r-','LineWidth',2);
hold on;
plot(sigma_all',change_itera_all,'g-','LineWidth',2);
xlabel('db');ylabel('num');
legend('itera N1','change itera N2');
figure(7);
plot(sigma_all',change_itera_all,'g-','LineWidth',2);
xlabel('db');ylabel('num');
legend('change itera N2');