
N = 1000;
T = 300;
p = 3.5 *10^7;
Tol = 10^-12;
a = 0.401;
b = 42.7*10^-6;
k = 1.3806503*10^-23;
nmax = 100;

f = @(x) p*(x.^3) - (p*N*b + k*N*T)*(x.^2) + a*(N^2)*x -a*b*N^3;

[zero,res,niter] = bisection(f,0,2,Tol,nmax);

if niter>0
   fprintf('solution is %f\n',sol);
   fprintf('Residual is %f\n',res);
   fprintf('Iteration is %d\n',niter);
end