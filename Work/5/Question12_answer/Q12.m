g = @(h) 2-(((4*acos((2-h)/2))-1.6)/sqrt((4*h)-(h^2)))-h;
fplot(g,[-2,2])
hold on
grid on

%%Initial value
x1 = 0.1;
x2 = x1-((0.1)*g(x1))/(g(x1+0.1)-g(x1));

%% Start loop
iter = 0;
while abs(x2-x1)> 1e-2 
    plot([x1 x2],[g(x1) 0],'k-')
    plot([x2 x2],[0 g(x2)],'k--')
    pause
    x1 = x2
    x2 = x1-((0.5)*g(x1))/(g(x1+0.5)-g(x1));

    iter = iter +1;
end

disp(x1)
disp(iter)