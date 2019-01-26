function Trapezoidal(f,seg,upperB,lowerB)

   %x = sym('X');
   I=0;
   
       middle_seg = (upperB-lowerB)/(seg);
       temp=middle_seg;
       for i=1:(seg-1)
          I = I + subs(f,middle_seg);
          %fprintf('hey\n')
          middle_seg = middle_seg + temp;
       end
       %first = subs(f,lowerB)
       %second = subs(f,upperB)
       I = 2*I + subs(f,lowerB) + subs(f,upperB);
       I = ((upperB-lowerB)/(2*seg)) * I;
       normal = integral(f,0,4);
       fprintf('segments %d\n I = %f\n',seg,I);
       error_percent = ((normal - I)/normal) * 100;
       fprintf('Error percentage = %f\n\n',error_percent);
       

end