
function func = RKOrder4(f,xStart, xEnd, h, u)
    
    count = 1;
    func(count) = u;

    for i=xStart:h:xEnd-h

       k0 = h*f(i,func(count));
       k1 = h*f((i+h/2),(func(count)+k0/2));
       k2 = h*f((i+h/2),(func(count)+k1/2));
       k3 = h*f((i+h),(func(count)+k2));
       
       func(count + 1) = func(count) + (k0 + 2*(k1 + k2) + k3)/6;
       count = count + 1;
    end
end