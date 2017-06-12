function fitness= fitnessFun(X,y,lamda,coeff)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   X:each colum vector is a training sample,p*m matrix.
%   y:each entry of y is the true value of the sample
%   lamda:adaptive coefficient
%   coeff:the weight coefficient of X,a*b vector
[p m]=size(X);
[a,b]=size(coeff);
A=zeros(a,1);
for i=1:a
    newX=zeros(1,m);
    num=1;
    for j=1:b
        if coeff(i,j)~=0
            newX(num,:)=X(j,:);
            num=num+1;
        end
    end
    u=(newX*newX')\newX*y;
    error=(y-newX'*u)'*(y-newX'*u)+lamda*(num-1);
    A(i,1)=1/error;
end
fitness=A;
end

