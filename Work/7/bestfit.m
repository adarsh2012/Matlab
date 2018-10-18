load data
n = length(x);
a1 = (n*(sum(x.*y)) - (sum(x)*sum(y)))/(n*(sum(x.^2)) - (sum(x))^2);
a0 = (sum(y) - a1*sum(x))/length(x);
bestline = a0 + a1.*x;
plot(x,y,'ro','MarkerFaceColor','r')
hold on
plot(x,bestline,'b')
