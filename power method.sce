clc;clear;
A= [2 1 1 ; 1 3 2 ; 3 1 4]
x0= [1;1;1] 
lambda0=1;
tol= 0.0001; err=1;k=1;

while(abs(err)>tol)
    x1= A*x0
    lambda= max(abs(x1))
    
    x0= x1/lambda
    err= lambda0 - lambda
    lambda0= lambda
    disp(k,lambda,x0/norm(x0))
    k=k+1
end

[v,d]= spec(A)
disp(v)
disp(d)
    
b=eye(4,4)
disp(b)
