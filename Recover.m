function [u] = Recover(X,y,coeff )
%RECOVER Summary of this function goes here
%   Detailed explanation goes here

[p m]=size(X);
[a,b]=size(coeff);
newX=zeros(1,m);
num=1;
    for j=1:b
        if coeff(1,j)~=0
            newX(num,:)=X(j,:);
            num=num+1;
        end
    end
    u=inv(newX*newX')*newX*y;
end

