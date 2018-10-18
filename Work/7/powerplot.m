load otherdata 
n = length(ex);
y = log(ey);
a1 = (n*(sum(ex.*y)) - (sum(ex)*sum(y)))/(n*(sum(ex.^2)) - (sum(ex))^2);
a0 = (sum(y) - a1*sum(ex))/length(ex);
alpha = exp(a0);
beta = a1;
ey = alpha*exp(beta.*ex);
plot(ex,ey)