function [w_hat,itera,change_itera]=train(X_train,y_train,N_train,rate,b)
%% 数据预处理与参数初始化
X_hat=[X_train ones(N_train,1)];  %样本向量增广
index=find(y_train==-1);   
X_hat(index,:)=-X_hat(index,:);   %样本向量规范化
w_hat=zeros(size(X_hat,2),1);     %初始化权向量
t=1;       %当前样本位置
num=0;     %当前权向量下正确分类的个数
itera=0;   %迭代次数
change_itera=0;
%% 梯度下降迭代
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