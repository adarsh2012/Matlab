y = @(x) x.^3 - 6*(x.^2) + 10*x - 4;
x0 = -20;
W = [];
while x0 < 20
    x = x0 + 0.1;
    if(y(x)*y(x0) < 0)
        W = [W;[x0 x]];
    end
    x0 = x;
end



save brackets W y
