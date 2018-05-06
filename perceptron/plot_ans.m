function plot_ans(w)
if w(2)~=0
    x1=-1:0.5:1;
    x2=-w(1)*x1/w(2)-w(3)/w(2);    
else
    x1=-w(3)/w(1);
    x2=-5:5;   
end
plot(x1,x2,'g-');
end