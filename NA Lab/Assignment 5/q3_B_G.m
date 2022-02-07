n=4;
A= [4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];  
B= [-2; -1; 0; 1];
tol=0.001;
X=zeros(n,1);
X0=[0; 0; 0; 0];
N=10;
for k=1:N
    for i=1:n
        X(i)=(B(i)-A(i,1:i-1)*X(1:i-1)-A(i,i+1:n)*X0(i+1:n))/A(i,i);
    end
    e=norm((X-X0),inf);
    if e<tol
       break;
    else
        X0=X;
    end
end
disp(X0);