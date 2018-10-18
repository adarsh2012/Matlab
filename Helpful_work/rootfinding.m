
%% fixed point iteration
f = @(m) m.^2 - m - exp(-m);
g = @(m) (exp(-m) + m).^0.5;
xo = 1;
x = -10:0.1:10;
hold on
grid on
plot(x,x)
plot(x,g(x))
ylim([0.75 1.25]);
xlim([0.5 1.5]);
plot([xo xo],[0 g(xo)],'r--','LineWidth',2)
while abs(f(xo)) > 0.001
    x1 = g(xo)
    x2 = g(x1)
    plot([xo x1],[x1 x1],'r--','LineWidth',2)
    plot([x1 x1],[x1 x2],'r--','LineWidth',2)
    pause(2)
    xo = x1
end
%% Newtons Rapshon method
syms x
y = x.^3 + x + 2;
df = matlabFunction(diff(y));
yy = matlabFunction(y);
xo = 0;
plot(-10:0.1:10,yy(-10:0.1:10))
grid on
ylim([-4 4])
xlim([-2 2])
while abs(yy(xo)) > 1.0e-5
    hold on
    x1 = xo - (yy(xo)/df(xo));
    plot([xo xo],[0 yy(xo)],'r--')
    plot([xo x1],[yy(xo) 0],'r--')
    xo = x1;
    pause(2)
end
    
    