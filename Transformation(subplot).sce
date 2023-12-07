//Reflection transformations

clc,clear,clf()
x=input("Enter the x coordinates : ")//Enter 4x2 natrix where fourth entry is the first coordinates
y=input("Enter the y coordinates : ")
Tx=[1 0 ;0 -1]
Ty=[-1 0;0 1 ]
Tyx=[0 1;1 0]
Tor=[-1 0;0 -1]
R=[x;y]
Txr=Tx*R
Tyr=Ty*R
Tyxr=Tyx*R
Torr=Tor*R
disp(Txr)

subplot(2,2,1)
plot(R(1,:),R(2,:),"color","violet","linewidth",2)
plot(Txr(1,:),Txr(2,:),'k--',"linewidth",2)
xgrid()
a=gca()
a.x_location="origin"
a.y_location="origin"
legend('Given Coordinates','Reflection about x-axis',-4)
subplot(2,2,2)
plot(R(1,:),R(2,:),"color","violet","linewidth",2)
plot(Tyr(1,:),Tyr(2,:),'b--',"linewidth",2)
xgrid()
a=gca()
a.x_location="origin"
a.y_location="origin"
legend('Given Coordinates','Reflection about y-axis',-4)
subplot(2,2,3)
plot(R(1,:),R(2,:),"color","violet","linewidth",2)
plot(Tyxr(1,:),Tyxr(2,:),'g--',"linewidth",2)
xgrid()
a=gca()
a.x_location="origin"
a.y_location="origin"
legend('Given Coordinates','Reflection about x=y',-4)
subplot(2,2,4)
plot(R(1,:),R(2,:),"color","violet","linewidth",2)
plot(Torr(1,:),Torr(2,:),'r--',"linewidth",2)
xgrid()
a=gca()
a.x_location="origin"
a.y_location="origin"
legend('Given Coordinates','Reflection about origin',-4)
