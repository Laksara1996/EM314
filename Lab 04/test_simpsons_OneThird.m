
f =@(x) 1-x-4*x.^3+2*x.^5;
simpson_OneThird(f,2,4,0)
simpson_OneThird(f,4,4,0)
simpson_OneThird(f,6 ,4,0)