function [itera,change_itera]=main(sigma,db,rate,b)
%% �������Կɷ�����
% sigma=1;
% db=0.1;
slope=2;
intercept=4;
% ѵ��������
%step_train=0.02;   %����һ
%[X_train, y_train,N_train]=generate_sample(step_train,sigma,slope,intercept,db);
N_train=200;        %������
[X_train, y_train]=generate_sample_1(N_train,sigma,slope,intercept,db);
data=[X_train y_train];
% figure(1);
% plotData(X_train, y_train);   % չʾ����
% title('training data');
% ���Լ�����
%step_test=0.05;
%[X_test, y_test,N_test]=generate_sample(step_test,sigma,slope,intercept,db);
% N_test=100;
% [X_test, y_test]=generate_sample_1(N_test,sigma,slope,intercept,db);
%% ѵ��
% rate=1;    %ѧϰ��
% b=0;       %����
[w_hat,itera,change_itera]=train(X_train,y_train,N_train,rate,b);
%% ѵ��������
% figure(2);
% plotData(X_train,y_train);
% hold on
% plot_ans(w_hat);
y_hat=predict(X_train,w_hat,N_train);
fprintf('Train Accuracy: %f\n', mean(double(y_hat==y_train)) * 100);
% %% ���Լ�����
% figure(3);
% plotData(X_test,y_test);
% hold on
% plot_ans(w_hat);
% hold off;
% y_test_hat=predict(X_test,w_hat,N_test);
% fprintf('Test Accuracy: %f\n', mean(double(y_test_hat==y_test)) * 100);
%%
% rate_vari=0.01:0.001:1;
% rate_num=length(rate_vari);
% w_hat_all=zeros(rate_num,length(w_hat));
% itera_all=zeros(rate_num,1);
% change_itera_all=zeros(rate_num,1);
% for i=1:rate_num
%     [wi,itera_all(i),change_itera_all(i)]=train(X_train,y_train,N_train,rate_vari(i),b);
%      w_hat_all(i,:)=wi';
% %      y_test_all=predict(X_test,wi,N_test);
% %      fprintf('Test Accuracy: %f\n', mean(double(y_test_all==y_test)) * 100);
% end
% figure(4);
% plot(rate_vari',itera_all,'r-','LineWidth',2);
% hold on;
% plot(rate_vari',change_itera_all,'g-','LineWidth',2);
% xlabel('rate');ylabel('num');
% legend('itera N1','change itera N2');
% figure(5);
% %plot(rate_vari',itera_all,'r-','LineWidth',2);
% hold on;
% plot(rate_vari',change_itera_all,'g-','LineWidth',2);
% xlabel('rate');ylabel('num');
% legend('change itera N2');
% %%
% db_all=0.1:0.1:5;
% for i=1:length(db_all)
%     [X_train, y_train]=generate_sample_1(N_train,sigma,slope,intercept,db_all(i));
%     [w_hat,itera,change_itera]=train(X_train,y_train,N_train,rate,b);
%     itera_all_1(i)=itera;
%     change_itera_all_1(i)=change_itera;
%     j=j+1;
% end
% figure(6);
% 
% plot(db_all,itera_all_1);
% xlabel('db');ylabel('�����ܴ���');
% figure(7);
% 
% plot(db_all,change_itera_all_1);
% xlabel('db');ylabel('��������');
% 
end
