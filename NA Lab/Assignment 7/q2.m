x = [1, 1.5, 2.0, 2.5];
y = [2.7183, 4.4817, 7.3891, 12.1825];

p = input("Enter the coordinate :- ");

F = zeros(4, 4);
F(:, 1) = y;

for i = 2:length(x)
    for j = i:length(x)
        F(j, i) = (F(j, i - 1) - F(j - 1, i - 1)) / (x(j) - x(j - i + 1));
    end
end

product = zeros(1, 4);

for i=1:length(x)
    product(i) = 1;
   for j = 1:(i - 1)
       product(i) = product(i) * (p - x(j));
   end
end

sum = 0;
for i=1:length(x)
    sum = sum + (F(i, i) * product(i));
end

disp(sum);

disp("error - ");
disp(abs(exp(2.25) - sum)/ exp(2.25));