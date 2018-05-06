function plotData(X, y)
pos=find(y==1);
neg=find(y==-1);
plot(X(pos,1),X(pos,2),'k+','LineWidth',2);
hold on
plot(X(neg,1),X(neg,2),'ko','MarkerFacecolor','g');
xlabel('x1');ylabel('x2');
end
