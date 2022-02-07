A=input('coefficient : \n');
B=input('constants : \n');
n=max(size(A));
C=[A B];
for i=1:(n-1)
for j=(i+1):n
m(j,i)=C(j,i)/C(i,i);
C(j,:)=C(j,:)-m(j,i)*C(i,:);
end
end
fprintf('Augmented Matrix : \n ');
disp(C);
x(n,:)=C(n,n+1)/C(n,n);
for i=n-1:-1:1
x(i,:)=(C(i,n+1)-C(i,i+1:n)*x(i+1:n,1))/C(i,i);
end
for i=1:n
fprintf('x%d = %f \n',i,x(i));
end
