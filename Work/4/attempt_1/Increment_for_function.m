f = @(x) x.^3 - 6.*x.^2 + 10.*x - 4;
%increment method
range = [];
for x = -10:0.001:10
    if(f(x)*f(x+0.001) < 0)
        range = [range;x x+0.001];
    end
end
%bisection

save range_func f range 