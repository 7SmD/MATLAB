f = @(x) exp(-x)*(x^2+5*x+2)+1;
x0 = -1;
x1 = 0;
N = 10;
for i=1:N 
    x2 = x1 - ((x1-x0)/(f(x1)-f(x0)))*f(x1);
    fprintf('x%d = %.4f\n',i+1,x2)
    if abs(x2-x1)<10^-4
       break
    end
    x0 = x1;
    x1 = x2;
end