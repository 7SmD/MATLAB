A = [1 1 0 0
    1 2 0 1
    0 0 3 4
    0 1 2 3];
X = [1
    1
    0
    1];

err = 10^(-3);

m = 0;
n = 1;

for i = 1: 50
    y = A * X;
    n = max(y);
    X = y / n;
    %disp(m - n);
    if abs(n - m) <= err
        break;
    end
    m = n;
end

disp("The largest eigen-value is : ")
disp(n)
disp("The eigen-vector is : ")
disp(X)