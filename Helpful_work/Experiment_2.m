%Experimenting with plots (Lecture_2)
x = [1 2 3 4];
y = 2*x;
eu(1:1,1:4) = 4;
plot(x,y,'Marker','o','MarkerSize',10,'MarkerFaceColor','r','MarkerEdgeColor','b')
hold on
errorbar(x,y,eu,eu)



%% Newsection 
theta = -2*pi:0.1:2*pi;
x = cos(theta);
y = sin(theta);
plot(x,y)

%% 3dplot

t = -10:0.01:10
x = cos(t);
y = sin(t);
z = t;
%plot3(x,y,z);

x = [1 2 3 4]
%pie(x,[0 0 0 1],{'Adarsh','Akash','Alok','Rashmi'})
    
    
    
