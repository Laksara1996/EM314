
x = 500:500:5000;
size = length(x);
t = zeros(1,size);
for i=1:size
    t1 = cputime();
    A = rand(i*500);
    determinent = det(A);
    t(i) = cputime() - t1;   
end
hold on

loglog(log(x),log(t),'-+')
xlabel('log(x)');
ylabel('log(t)');

p = polyfit(log(x),log(t),1)

p1 = polyval(p,log(x));

plot(log(x),p1,'b')
hold off


