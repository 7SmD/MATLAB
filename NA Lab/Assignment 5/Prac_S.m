A=[10 8 -3 1;2 10 1 -4; 3 -4 10 1 ; 2 2 -3 10 ];
B=[16;9;10;11];
tol = 0.001;
w = 1.2;
n=4;
e = 1;
x = zeros(1,n);
x0 = zeros(1,n);
while e>tol
    for i=1:n
        x0(i)=x(i);
        
        
        sum=0;
        for j=1:n
            if (i~=j)
            sum=sum+A(i,j)*x(j);
            end
        end
        x(i)=(1-w)*x(i) + (w*(B(i,:) - sum))/A(i,i);
        
        e=norm(x0(i)-x(i),inf);
    end
    
end
x