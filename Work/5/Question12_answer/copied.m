func = @(h) 2-(((4*acos((2-h)/2))-1.6)/sqrt((4*h)-(h^2)))-h;
xo = 0.1;
x2 = xo-((0.1)*func(xo))/(func(xo+0.1)-func(xo));
while abs(x2-xo) > 1e-2 
    xo = x2;
    x2 = xo-((0.5)*func(xo))/(func(xo+0.5)-func(xo));
    abs(x2-xo)
end
