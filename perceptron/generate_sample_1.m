function [X, y]=generate_sample_1(N,sigma,a,b,db)
% generate 
X=zeros(N,1);
vari=zeros(N,1);
num=0;
X(:,1)=rand(N,1)*2-1;
while num<N 
    gene=randn;
    if gene~=0
        num=num+1;
        if gene>0
            vari(num)=sigma*gene+db;
        else
            vari(num)=sigma*gene-db;
        end
    end
end
X(:,2)=a*X(:,1)+b+vari;
y=zeros(N,1);
index_pos=find(vari>0);
index_neg=find(vari<0);
y(index_pos)=1;
y(index_neg)=-1;
end


