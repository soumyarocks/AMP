clc;clear;clf();
x1=input("enter the coordinates of point A: ");
x2=input("enter the coordinates of point B: ");
n=1000;
x=linspace(x1(1,1),x2(1,1),n);
d=sqrt((x1(1,1)-x)^2+(x1(1,2)-0)^2)+sqrt((x-x2(1,1))^2+(0-x2(1,2))^2);
[m,k]=min(d);
disp("point of reflection : ("+string(x(1,k))+",0)")
disp("angle of incidence: "+string(90-180*atan(x1(1,2)/(x(1,k)-x1(1,1)))/%pi))
disp("angle of reflection: "+string(90-180*atan(x2(1,2)/-(x(1,k)-x2(1,1)))/%pi))
plot([x1(1,1)  x(1,k)],[x1(1,2)  0]);
plot([x2(1,1)  x(1,k)],[x2(1,2)  0]);
plot(x,0,'k');
plot(x(1,k)*ones(x),x-x1(1,1),'--k')
title("shortest path of reflection");
xlabel("x");
ylabel("y");
