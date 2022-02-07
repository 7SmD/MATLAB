Num = 4;

X = [ 0, 0.25, 0.5, 0.75 ];

Y = [1, 1.64872, 2.71828, 4.4816];

a = 0.43;

Num = size(X,1);

if Num == 1
  Num = size(X,2);
end

for i = 1:Num
  f(i,1) = Y(i);
end

for i = 2:Num
  for j = 2:i
    f(i,j)=(f(i,j-1)-f(i-1,j-1))/(X(i)-X(i-j+1));
  end
end

fa = f(Num,Num);

for i = Num-1:-1:1
  fa = fa*(a-X(i)) + f(i,i);
end

display(fa)