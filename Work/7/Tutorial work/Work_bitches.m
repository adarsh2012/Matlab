xx = 0:0.1:20;
x = [0 2 4 6 9 11 12 15 17 19];
y = [5 6 7 6 9 8 8 10 12 12];
n = length(x);
a1 = ((n*(sum(x.*y)) - (sum(x)*sum(y)))/((n*sum(x.^2))-(sum(x))^2));
a0 = (sum(y)/n) - a1*(sum(x)/n);
yfit = a0 + a1.*xx;
r = @(x,y,n) (n*sum(x.*y)-(sum(x)*sum(y)))/(sqrt(n*sum(x.^2)-(sum(x))^2)*(sqrt(n*sum(y.^2)-sum(y)^2)));

newr = 0:0.1:20;
a = polyfit(x,y,1);
mm = polyval(a,newr);
plot(x,y,'ro');
hold on
plot(newr,mm,'b');


%% q4
fa1 = @(x,y,n) ((n*(sum(x.*y)) - (sum(x)*sum(y)))/((n*sum(x.^2))-(sum(x))^2));
fa2 = @(x,y,n,a1) (sum(y)/n) - a1*(sum(x)/n);
x = 10:10:80;
y = [25 70 380 550 610 1220 830 1450];
lx = log(x);
ly = log(y);
a1 = fa1(lx,ly,length(lx));
a0 = fa2(lx,ly,length(lx),a1);
alpha = exp(a0);
beta = a1;

%% molar thing
fa1 = @(x,y,n) ((n*(sum(x.*y)) - (sum(x)*sum(y)))/((n*sum(x.^2))-(sum(x))^2));
fa2 = @(x,y,n,a1) (sum(y)/n) - a1*(sum(x)/n);
T = -40:40:160;     
p = [6900 8100 9350 10500 11700 12800];
constant = fa1(T,p,length(T));
mg = 2*14.0067; % g/mol
V = 10; % m^3
m = 1000; % g
n = m/mg; % mol
R = constant*(V)/n;

%% question 6

x = [0.1 0.2 0.4 0.6 0.9 1.3 1.5 1.7 1.8];
y = [0.75 1.25 1.45 1.25 0.85 0.55 0.35 0.28 0.18];
yy = log(y)-log(x);
cc = polyfit(x,yy,1);
beta = cc(1)
alpha = exp(cc(2))
