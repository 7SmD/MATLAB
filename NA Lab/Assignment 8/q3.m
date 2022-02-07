n = 4;
x = [2 3 4 5];
y = [27.8 62.1 110 161];
sum_x = sum(log(x));
sum_Y = sum(log(y));
sum_xY = sum(log(y).*log(x));n 
sum_x2 = sum(log(x).*log(x));
A = [n sum_x
    sum_x sum_x_sqr];
B = [sum_Y
    sum_xY];
X = inv(A)*B;                          
f = @(x) (exp(X(1))*power(x,X(2)));
fprintf("Poly function: P(x) = %.4f*e^(%.4f*x)\n",exp(X(1)),X(2));
plot(x,f(x))
