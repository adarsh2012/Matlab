load range_func.mat
answers = [];
for x = 1:length(range)
    xn = (f(range(x,1)) + f(range(x,2)))/2;
    while abs(f(xn)) >= 0.001
        if(f(xn)*f(range(x,1)) < 0)
            range(x,2) = xn;
            xn = (f(range(x,1)) + f(xn))/2;
        else
            range(x,1) = xn;
            xn = (f(xn) + f(range(x,2)))/2;
        end
    answers = [answers,xn];
    end
end
    