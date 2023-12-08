clc,clear,clf()
x=input("Enter the x coordinates : ")
y=input("Enter the y coordinates : ")
R=[x;y]
//theta=input("Enter the angle of rotation :")
for theta=1:2:360
A= [cosd(theta) sind(theta);-sind(theta) cosd(theta)]
C=A*R
plot(R(1,:),R(2,:))
plot(C(1,:),C(2,:),'k--')
xgrid()
a=gca()
a.x_location="origin"
a.y_location="origin"
legend('Given Coordinates','Translated',-4)
title("Rotational Transformation for angle theta = " + string(theta) )
end
