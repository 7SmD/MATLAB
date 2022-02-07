clc
A=input('coefficient : \n');
B=input('constants : \n');
n = max(size(A));
m = eye(n);
for j=1:n-1
for i=j+1:n
if (A(j,j)==0)
t=A(j,:);
A(j,:)=A(i,:);
A(i,:)=t;
end
end
end
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
x(i,:) = (B(i,:)-(A(i,i+1:n)*x(i+1 :n,:)))/A(i,i);
end
for i=1:n
fprintf("x%d = %f\n",i,x(i));
end

