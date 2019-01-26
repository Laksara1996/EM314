
k = 1:40;
hk = 1./(2.^k);
fhk = (log(3+hk) - log(3))./hk;
Ehk = abs(1/3-(fhk));

for i=1:40
    fprintf('%d \t%f\t %f\t %f\n',k(i),hk(i),fhk(i),Ehk(i));
end

hold on;

loglog(log(hk),log(Ehk));

c = polyfit(log(hk),log(Ehk),1)

ylabel('Ehk');
xlabel('hk');
hold off