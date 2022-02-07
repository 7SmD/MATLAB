f = @(x) exp(-x)*(x^2 + 5*x + 2) + 1;
df = @(x) -(x^2 +3*x -3)*exp(-x);
x0 = -1;
N = 10;
if df(x0) ~= 0
   for i=1:N
      x = x0 - f(x0)/df(x0);
      fprintf('x%d = %.4f\n',i,x)
      if abs(x-x0)<10^-4
          break
      end
      if df(x) == 0
          disp('failed')
          break
      end
      x0 = x;
      
   end
else 
    disp("Newton's method failed")
    
end