function simpson_OneThird(f,seg,upperB,lowerB)

    I = 0;
    oddInt = 0;
    evenInt = 0;
    middle_seg = (upperB-lowerB)/(seg);
    temp=middle_seg;
    for i=1:2:seg-1
       oddInt = oddInt + subs(f,middle_seg*i); 
    end
    for i=2:2:seg-2
       evenInt = evenInt + subs(f,middle_seg*i); 
    end
    
    I = ((upperB-lowerB)/(3*seg))*(subs(f,lowerB) + (4*oddInt) + (2*evenInt) + subs(f,upperB));
    normal = integral(f,0,4);
    fprintf('segments %d\n I = %f\n',seg,I);
    error_percent = ((normal - I)/normal) * 100;
    fprintf('Error percentage = %f\n\n',error_percent);
    
end