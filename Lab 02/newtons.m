function  [sol,res,niter]=newtons(f,fDer,T,x,nmax)

    niter = 1;
    xNxt = x - f(x)/fDer(x);
    exp_x = 0.828427124746190;

    while (niter<=nmax && abs(x-xNxt)>=T)
        niter = niter + 1;
        x = xNxt;
        xNxt = x - f(x)/fDer(x);
        fprintf('itr = %d, x = %f, dif = %f convergence = %f\n',niter,x,abs(x-exp_x),abs(x-exp_x)/(x-exp_x)^2);
    end

    if niter>nmax
        fprintf('Newtons method exceeded without convergence')
    end
    
    res = abs(x - xNxt);
    sol = x;
end