A=[4 1 -1 1 ; 1 4 -1 -1 ; -1 -1 5 1 ; 1 -1 1 3 ];
B=[-2;-1;0;1];
tol = 0.001;
w = 1.2;
n=4;
error = 1;
x = zeros(1,n);
x0 = zeros(1,n);
while error > tol
    for i=1:n
    x0(i) = x(i);
    sum =0;
        for j=1:n
            if(i~=j)
            sum = sum + A(i,j)*x(j);
            end
        end
    x(i) = (1-w)*x0(i) + (w*(B(i,:) - sum))/A(i,i);
    end
error = norm(x0(i)-x(i),inf);
end
disp("THE VALUES OF X1,X2,X3,X4 ARE THE FOLLOWING:");
disp(x);
