
function func=ForwardEuler(f, xStart, xEnd, h, u)

    count = 1;
    func(count) = u;
    for i=xStart:h:xEnd-h
       func(count + 1) = func(count) + h*f(i,func(count));  
       count = count + 1;
    end
end