clc;clear;
A= input("Enter the matrix---")
[v,d]= spec(A)
disp(d)
n= input("Enter the no. iterations---")

for k= 1:n
    [Q,R]= qr(A)
    disp(R)
    A=R*Q;
end
