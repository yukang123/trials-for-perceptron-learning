function [w_hat,itera,change_itera]=train(X_train,y_train,N_train,rate,b)
%% ����Ԥ�����������ʼ��
X_hat=[X_train ones(N_train,1)];  %������������
index=find(y_train==-1);   
X_hat(index,:)=-X_hat(index,:);   %���������淶��
w_hat=zeros(size(X_hat,2),1);     %��ʼ��Ȩ����
t=1;       %��ǰ����λ��
num=0;     %��ǰȨ��������ȷ����ĸ���
itera=0;   %��������
change_itera=0;
%% �ݶ��½�����
while (num<N_train)
    x=(X_hat(t,:))';
    if w_hat'*x<=b
        w_hat=w_hat+rate*x;
        num=0;
        change_itera=change_itera+1;
    else
        num=num+1;
    end
    t=t+1;
    if t>N_train
        t=1;
    end
    itera=itera+1;
end
end