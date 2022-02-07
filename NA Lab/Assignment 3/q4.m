clc
f = @(x) x + 2*sin(pi*x);
g = @(x) -2*sin(pi*x);
x = 1.0; % initial guess
n = 20; % no of iterations 
i = 1;
y = g(x);
tol = 10^-5;
if y == x
    disp(y)
end
while (i <= n)
    x = y;
    y = g(x);
    
    fprintf('root = %0.30f\n',y)
    
    if (abs(x-y) < tol)
        break;
    end
    i = i+1;
end