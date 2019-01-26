
f =@(x) x^2 + 4*x - 4;
fDer =@(x) 2*x + 4;
x0 = 100;
T = 10^(-5);
nmax = 100;

[sol,res,niter]=newtons(f,fDer,T,x0,nmax);

if niter>0
   fprintf('solution is %f\n',sol);
   fprintf('Residual is %f\n',res);
   fprintf('Iteration is %d\n',niter);
end