x = zeros(5,4);
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
    x(i, j) = x(i, 1) * x(i, 2);
    x(i, j + 1) = x(i, 1) ^ 2;
    sum3 = sum3 + x(i, j);
    sum4 = sum4 + x(i, j + 1);
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

A = [sumx4, sumx3, sum4;
    sumx3, sum4, sum1;
    sum4, sum1, 5];

B = [sumx2y1;
    sum3;
    sum2];

answer = inv(A) * B