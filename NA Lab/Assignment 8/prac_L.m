x=[-2 -1 0 1 2];
y=[15 1 1 3 19];
n=5;
a = [n sum(x) ; sum(x) sum(x.*x)];
b = [sum(y) ; sum(x.*y)];
R=inv(a)*b;
a=R(1)
b=R(2)