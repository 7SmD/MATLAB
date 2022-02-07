x = zeros(5,2);
n = [-2, -1, 0 , 1, 2];
x(:,1) = n;
n = [15, 1, 1, 3, 19];
x(:,2) = n;

sum1 = 0;
sum2 = 0;
sum3 = 0;
sum4 = 0;
sumx4 = 0;
sumx3 = 0;
sumx2y1 = 0;

for i = 1:5
    j = 3;
    sum3 = sum3 + x(i, 1) * x(i, 2);
    sum4 = sum4 + x(i, 1) ^ 2;
    sum1 = sum1 + x(i, 1);
    sum2 = sum2 + x(i, 2);
    sumx4 = sumx4 + x(i, 1) ^ 4;
    sumx3 = sumx3 + x(i, 1) ^ 3;
    sumx2y1 = sumx2y1 + ((x(i, 1) ^ 2) * x(i, 2));
end
x;
sum1;
sum2;
sum3;
sum4;



a = ((5 * sum3) - (sum1 * sum2)) / ((5 * sum4) - (sum1 * sum1))
b = (sum2 - (a * sum1)) / 5