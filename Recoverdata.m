t=-1:0.1:1;
u=Recover(X,y1,Chrom(I,:));
w=Chrom(I,:);
num=1;
for i=1:length(w)
    if w(i)~=0
        w(i)=u(num);
        num=num+1;
    end
end
y=(w*X);
plot(t,y1, 'o', 'MarkerFaceColor', 'g', ...
                                      'MarkerSize', 10);
hold on;
plot(t,y,'r');
legend('training-data','regression-curve');