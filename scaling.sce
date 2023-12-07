clc;clear;clf()
x=linspace(-1,1,100)
y=sqrt(1-x.^2)
r=[x;y]
Ts=[2 0;0 3]
Tsr=Ts*r
plot(r(1,:)',r(2,:)','r')
plot(r(1,:)',-r(2,:)','r')
plot(Tsr(1,:)',Tsr(2,:),'k--')
plot(Tsr(1,:)',-Tsr(2,:),'k--')
legend('Given Coordinates','scaling transformation',2)
xgrid()
a=gca()
a.x_location="origin"
a.y_location="origin"
a.tight_limits=["on","on"]
a.data_bounds=[-3,-4;3,4]
