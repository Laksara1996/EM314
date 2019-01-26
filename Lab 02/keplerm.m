E0 = 100;
e = 0.8;
M = 3;
T = 10^-8;
nMax = 100;
f  = @(E) M - E + e*sin(E);
fDer = @(E) -1 + e*cos(E);

[sol,res,niter]=newtons(f,fDer,T,x0,nmax);

if niter>0
   fprintf('solution is %f\n',sol);
   fprintf('Residual is %f\n',res);
   fprintf('Iteration is %d\n',niter);
end