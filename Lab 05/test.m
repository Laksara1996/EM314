
%x=syms('x');
%f =@(x) -2*x.^3 + 12*x.^2 - 20*x + 8.5;
% f = @(x,y) (x + y);
% 
% A=ForwardEuler(f,0,0.1,0.02,1);
% disp(A)

%B = ImproEuler(f,0,0.1,0.02,1)
%disp(B)

% C = RKOrder4(f,0,0.1,0.02,1);
% disp(C)

A = 1;
fi = 10;
beta = 8;
t = 0;
u = 0;
tEnd = 1.2;
f = @(x,y) (fi - (beta*sqrt(y))/A);

h=0.2;
A1 = ForwardEuler(f, t, tEnd, h, u);
h=0.1;
A2 = ForwardEuler(f, t, tEnd, h, u);

h = 0.2;
Ans2 = ImproEuler(f, t, tEnd, h, u);

Ans3 = RKOrder4(f, t, tEnd, h, u);

disp(A1);
disp(A2);
disp(Ans2);
disp(Ans3);

x = t:0.2:tEnd;
x1 = t:0.1:tEnd;

hold on
plot(x,A1);
plot(x1,A2);
plot(x,Ans2);
plot(x,Ans3);
title('Variation in h(t)');
xlabel('t');
ylabel('h(t)');
legend('Forwar Euler h=0.2','Forwar Euler h=0.1','Improved Euler','4th order Rungi-Kutta');
hold off
