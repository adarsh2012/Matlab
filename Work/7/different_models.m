x = 1:0.1:100;
%exponential model
subplot(3,1,1)
plot(x,exp(x),'LineWidth',2)
title('exponent model')
%Power equation
subplot(3,1,2)
plot(x,x.^(0.34),'LineWidth',2)
title('Power model (beta < 1)')
%Saturation-growth equation
subplot(3,1,3)
plot(x,(x)./(10.+x),'LineWidth',2)
title('Saturation-growth model')

