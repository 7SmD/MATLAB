A =[5 5 0 0 0;0 0 1 -1 -1;0 0 0 2 -3;1 -1 -1 0 0 ;0 5 -7 -2 0];
B = [5.5;0;0;0;0];
N = length(B);
X = zeros(N,1);
D = [A B];
for j = 1 : N-1
    for z=2:N-1
        if D(j,j)==0
            t=D(j,:);D(j,:)=D(z,:);
            D(z,:)=t;
        end
    end
    for i = j+1 : N
        m = D(i,j) / D(j,j);
        D(i,:) = D(i,:) - m*D(j,:);
    end
end
X(N) = D(N,N+1)/ D(N,N);
for k = N-1 : -1 : 1
    X(k) = (D(k,N+1) - D(k,k+1:N)*X(k+1:N)) / D(k,k);
end
disp(X);