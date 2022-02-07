x = [0.1 0.2 0.4 0.5 1 2];
y = [21 11 7 6 5 6];
sumx = 0;
sumx2 = 0;
for i=1:length(x)
    sumx = sumx + 1/(x(i) ^ 0.5);
    sumx2 = sumx2 + 1/(x(i) * x(i));
end

A = [sum(x) sumx
    sumx sumx2];

B = [sum(y .* sqrt(x))
    sum(y ./ x)];

c = inv(A) * B;

fprintf("Y = %.4f x^0.5 + %.4f/x \n", c(1), c(2));