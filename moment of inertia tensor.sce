 //moment of inertia
 clc;clear;clf;
m1=2
m2=1
m3=3
r1=[1 -1 2]
r2=[1 1 -2]
r3=[2 -2 2]
function f=r(a)
    f=a(1,1)^2+a(1,2)^2+a(1,3)^2
endfunction
t=[r(r1) r(r2) r(r3)]
m=[ m1 m2 m3]
x=[r1(1) r2(1) r3(1)]
y=[r1(2) r2(2) r3(2)]
z=[r1(3) r2(3) r3(3)]
function f=q(m,n,t)
    a=0
    for i=1:3
    a=a+m(i)*(t(i)-n(i)^2)
end
f=a
endfunction
function f2=p(m,k,l)
    b=0
    for i=1:3
    b=b-m(i)*k(i)*l(i)
end
f2=b
endfunction
i11=q(m,x,t);i12=p(m,x,y);i13=p(m,x,z)
i21=i12;i22=q(m,y,t);i23=p(m,y,z)
i31=i13;i32=i23;i33=q(m,z,t)

d=[i11 i12 i13;i21 i22 i23; i31 i32 i33]
disp(d)
