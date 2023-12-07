clc,clear,clf()
x=input("Enter the x coordinates : ")
y=input("Enter the y coordinates : ")
R=[x;y]
[a,b]=size(R)
//Tl=[2*ones(1,b);3*ones(1,b)]
//Tl=[2*ones(1,b);zeros(1,b)]
Tl=[zeros(1,b);3*ones(1,b)]
Tlr=Tl+R
plot(R(1,:),R(2,:))
plot(Tlr(1,:),Tlr(2,:),'k--')
xgrid()
a=gca()
a.x_location="origin"
a.y_location="origin"
legend('Given Coordinates','Translated',-4)
