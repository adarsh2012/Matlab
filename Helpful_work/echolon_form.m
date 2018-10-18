%REF
format rat
a = [1 4 5 6;2 10 6 11;3 4 5 12;2 3 4 5];
value = [2 3 4 7]';
a = [a value];
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
end

%% RREF
a = [1 2 1;2 -1 -1;1 3 -4];
value = [6 1 -3]';
a = [a value];
dimension = size(a);
for x=1:dimension(1)
    if a(x,x) ~= 1
        factor = 1/a(x,x);
        a(x,:) = a(x,:)*factor;
    end
    for i=1:dimension(1)
        if i ~= x
            factor = -a(i,x)/a(x,x);
            a(i,:) = a(i,:) + a(x,:)*factor;
        end
    end
end

%% LU thing


a = [1 1 -1;1 -2 3;2 3 1];
a = transpose(a);
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
end
a = transpose(a);
%a-->L! just transpose A and do the echalon then transpose the result! wow
%thats L!
