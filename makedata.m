t=-1:0.1:1;
X=[t.^16;t.^15;t.^14;t.^13;t.^12;t.^11;t.^10;t.^9;t.^8;t.^7;t.^6;t.^5;t.^4;t.^3;t.^2;t;ones(1,size(t,2))];
x=[t.^12;t.^7;t.^4;t.^3;t;ones(1,size(t,2))];
y=([6.72 2.25 -4.32 -3.86 1.13 2.16]*x)';
N=length(t);
% plot(t,y,'>');
a=linspace(-1,1,100);
b=6.72*(a.^12)+2.25*(a.^7)-4.23*(a.^4)-3.86*(a.^3)+1.13*a+2.16;
plot(a,b,'b');
hold on;
plot(t, y, 'o', 'MarkerFaceColor', 'r', ...
                                      'MarkerSize', 10);
hold on;
%y=[-4.23 -3.86 2.24 1.13 2.16]*x+rand(1,N)*2;
% for i=1:100
% y=y-randn(1,N);
% y=y+randn(1,N);
% end
idx=randsample(1:N,N,'false');
M=length(idx);
y1=y;
for i=1:M
    y1(idx(i))=y1(idx(i))+rand();
    y1(idx(i))=y1(idx(i))-rand();
end
% idx=randsample(N,N/2,'false');
% for i=1:M
%     y(i)=y(i)-rand();
% end
plot(t,y1, 'o', 'MarkerFaceColor', 'g', ...
                                      'MarkerSize', 10);
legend('polynomial curve','original-data','real-data')