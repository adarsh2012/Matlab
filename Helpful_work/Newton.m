xo = 1;
yo = 1;
f = @(x,y) 2.^2 - y.*x - 10;
g = @(x,y) y + 3.*x.*y.^2 - 57;

j = [2+yo xo; 3*yo^2 1+6*xo*yo];
F = [f(xo,yo) g(xo,yo)]'

%ezplot(f,[-10 10])
%fimplicit(f,[-10 10])

%% Just some practice questions!
format rat
a = [1 -3 0;0 1 3;2 -10 2];
dimension = size(a);
for x=1:dimension(1)
    if a(x,x) ~= 1
        factor = 1/a(x,x);
        a(x,:) = a(x,:)*factor;
    end
    if x<dimension(1)
        for i=x+1:dimension(1)
            factor = -a(i,x)/a(x,x);
            a(i,:) = a(i,:) + a(x,:)*factor;
        end
    end
    a
    pause(2)
end

%% tutorial 5 last question --> modified secant method
syms x
y = cos((x.^2)/2) + cos(2.*x);
df = matlabFunction(diff(y));
yy = matlabFunction(y);
l = []
xo = -pi;
deltax = 0.001;
for i = -pi:0.01:pi
    while abs(df(xo))>1.0e-10
        x1 = xo - ((deltax)*df(xo)) / (df(xo + deltax) - df(xo));
        xo = x1;
    end
    l = [l xo]
end
l = unique(l);
ezplot(yy,[-pi,pi]);
hold on 
ezplot(l(1))