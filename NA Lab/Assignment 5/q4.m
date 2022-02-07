n=3;
A= [4.63 -1.21 3.22; -3.07 5.48 2.11; 1.26 3.11 4.57];
B= [2.22 -3.17 5.11];
tol=0.0001;
X=zeros(n,1);
X0=[0; 0; 0];
N=100;
for i=1:N
    for j=1:n
        X(j)=(B(j)-A(j,1:j-1)*X(1:j-1)-A(j,j+1:n)*X0(j+1:n))/A(j,j);
    end
    e=norm(X-X0,inf);
    if(e<tol)
        break;
    end
    X0=X;
end

X