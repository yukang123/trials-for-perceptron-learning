%% 生成二类线性可分数据
function [X,y,N]=generate_sample(step,sigma,a,b,db)  
rr=sigma;
s=step; 
x1(:,1) = -1:s:1;
n=length(x1(:,1));
x1(:,2) = a.*x1(:,1) + b + db + rr*abs(randn(n,1));
y1 = ones(n,1);
x2(:,1)=-1:s:1;
x2(:,2) = a.*x2(:,1) + b - db - rr*abs(randn(n,1));
y2 = -ones(n,1);
X=[x1;x2];
y=[y1;y2];
N=size(X,1);
end