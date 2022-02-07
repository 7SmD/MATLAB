x=[-2 -1 0 1 2];
y=[15 1 1 3 19];
n=5;
A=[n sum(x) sum(x.*x)
    sum(x) sum(x.*x) sum(x.*x.*x)
    sum(x.*x) sum(x.*x.*x) sum(x.*x.*x.*x)];
B=[sum(y)
    sum(x.*y)
    sum(x.*x.*y)];
Sol=linsolve(A,B);
a=Sol(1)
b=Sol(2)
c=Sol(3)