function y_hat=predict(X,w,N)
X_hat=[X ones(N,1)];
y_hat=zeros(N,1);
for i=1:N
   x=(X_hat(i,:))';
   if w'*x>=0
       y_hat(i)=1;
   else
       y_hat(i)=-1;
   end
end
end