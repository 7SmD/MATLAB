A = [5 5,0,0,0;0,0,1,-1,-1;0,0,0,2,-3;1,-1,-1,0,0;0,5,-7,-2,0];
B = [5.5;0;0;0;0];
n = max(size(A));
m = eye(n);
for j=1:n-1
for i=j+1:n
m(i,j) = A(i,j)/A(j,j);
A(i,:) = A(i,:) - (m(i,j)*A(j,:));
B(i,:) = B(i,:) - (m(i,j)*B(j,:));
end
end
U = A;
L = m;
x = zeros(n,1);
x(n,:) = B(n,:)/A(n,n);
for i=n-1:-1:1
x(i,:) = (B(i,:)-(A(i,i+1:n)*x(i+1:n,:)))/A(i,i);
end
for i=1:n
fprintf("x%d = %f\n",i,x(i));
end