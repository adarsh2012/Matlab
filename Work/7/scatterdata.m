%% Linear
x = 10:10:100;
y = [0 30 20 50 40 70 60 90 80 110];
plot(x,y,'ro','MarkerFaceColor','r')
save data x y

%% Power series && Exponent
ex = 90:0.5:100;
ey = 10.*exp(ex)+ 30;
scatter(ex,ey);
save otherdata ex ey
