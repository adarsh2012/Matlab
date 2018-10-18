
f = @(x)  exp(x) - 3.*x.^2;
y = @(x) x;
plot(-100:1:100,f(-100:1:100));
hold on
plot(-100:1:100,y(-100:1:100));
hold on
xo = [-10];
while abs(f(xo)) > 0.05
    plot(xo,f(xo),'o')
    xo = f(xo)
end
