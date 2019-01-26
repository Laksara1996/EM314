m = [1, 1.5, 2];
n = [2, 2.5, 3];

fprintf('Using composite Trapezoidal Rule\n\n');
for i=1:3
    f =@(x)(( x.^(m(i)-1)).*((1-x).^(n(i)-1)));
    Trapezoidal(f,2,1,0)
    Trapezoidal(f,3,1,0)
    Trapezoidal(f,4,1,0)  
end

fprintf('Multiple application of Simpsons 1/3 Rule\n\n');

for i=1:3
    f =@(x)(( x.^(m(i)-1)).*((1-x).^(n(i)-1)));
    simpson_OneThird(f,2,1,0)
    simpson_OneThird(f,4,1,0)
    simpson_OneThird(f,6 ,1,0)   
end