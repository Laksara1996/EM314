
function func = ImproEuler (f,xStart, xEnd, h, u)
    
    count = 1;
    func(count) = u;
    for i=xStart:h:xEnd-h
       yNxt = func(count) + h*f(i,func(count));  
       yStarNxt = f((i+h),yNxt);
       avgY = (f(i,func(count)) + yStarNxt)/2.0;
       func(count + 1) = func(count) + avgY * h;
       count = count + 1;        
    end
end