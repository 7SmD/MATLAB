f = @(x) x - 2*sin(x);
df = @(x) 1 - 2*cos(x);
x0 = 2;
N = 10;
if df(x0) ~= 0
   for i=1:N
      x = x0 - f(x0)/df(x0);
      fprintf('x%d = %.4f\n',i,x)
      if abs(x-x0)<10^-4
          break
      end
      x0 = x;
      
   end
else 
    disp("Newton's method failed")
    
end