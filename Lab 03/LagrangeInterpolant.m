function LagrangeInterpolant(X,Y)

    x= sym('X');
    temp = 1;
    sum = 0;
    
    for i=1:length(X)
       for j=1:length(X)
           
           if i==j
              continue; 
           end

           L= (x-X(j))/(X(i)-X(j));
           temp = temp * L;

       end
       sum = sum + Y(i) * temp;
       temp = 1;
    end
    sum = simplify(sum)
    deri = simplify(diff(sum,x))
    %eq=t==0;
    solve(deri,x)
    %fzero(deri,X)
    
    ezplot(sum)
    hold on
    plot(X,Y,'+')
    hold off
   % x=7;
   subs(sum,-7)
end