g1 = @(x) exp(-x);
g2 = @(x) -ln(x);

plot(-10:10,g1(-10:10));
plot(-10:10,g2(-10:10));