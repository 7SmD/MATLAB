C=[-1 2 -1];
A=[-1 1 0;-1 0 2];
b=[6 ; 4];

m=size(A,1);
n=size(A,2);

nCm=nchoosek(n,m);
table=nchoosek(1:n,m);

res=[];
if n>=m
    for i=1:nCm
        y=zeros(n,1);
        x=A(:,table(i,:))\b;
        if all(x>=0 & x~=-inf)
            y(table(i,:))=x;
            res=[res y];
        end
    end
else
    error('m>n')
end

Z=C*res;

[Zmax,Zindex]=max(Z);
bfs=res(:,Zindex);

optval=[bfs' Zmax];
bfs_op=array2table(optval);
bfs_op.Properties.VariableNames(1:size(bfs_op,2))={'x1','x2','x3','Z'}