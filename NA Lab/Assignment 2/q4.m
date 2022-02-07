f = @(t) 9*exp(-t)*sin(2*pi*t) - 3.5;
 
N = 100;
 
h=1;
 
for i = -N:h:N
    if f(i)*f(i+h)<0
        a = i;
        b = i+h;
    end
end
fprintf('a = %g\nb = %g\n',a,b);
 
x0 = a;
x1 = b;
for i=1:N 
    x2 = x1 - ((x1-x0)/(f(x1)-f(x0)))*f(x1);
    fprintf('x%d = %.5f\n',i+1,x2)
    if abs(x2-x1)<10^-5
       break
    end
    x0 = x1;
    x1 = x2;
end