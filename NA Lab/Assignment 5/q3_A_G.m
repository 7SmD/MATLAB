A = input('enter the matrix: ');
B = input('enter the vector: ');
O = input('enter the initial guess vector: ');
n = input('enter the number of iterations: ');
tol = input('enter the tolerance: ');
N = length(B);
X = zeros(N,1);
Y = zeros(N,1);
 
for j = 1:n
    for i = 1:N
        X(i) = (B(i) / A(i,i)) - (A(i,[1:i-1 , i+1:N]) * O([1:i-1 , i+1:N])) / A(i,i);
        O(i) = X(i);
    end
    fprintf('iteration number %d \n' , j)
    X
    if (norm(Y-X,inf)<tol)

        break
    end
    Y = X;
end
