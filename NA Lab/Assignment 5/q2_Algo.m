A=[4 1 -1 1; 1 4 -1 -1; -1 -1 5 1; 1 -1 1 3]; 
B=[-2;-1;0;1]; 
    n=max(size(A));
    x=zeros(1,n);
    tol=0.001;
    e=1;
    w=1.2;
    while(e>tol)
        for i=1:n
            xo(i)=x(i);
            sum=0;
            for j=1:n
                if(i~=j)
                    sum=sum+A(i,j)*x(j);
                end
            end
        x(i)=(1-w)*xo(i)+w*(B(i,:)-sum)/A(i,i);
        end
    e=abs(xo(i)-x(i));
    end
    disp('solution');
    disp(x);
    