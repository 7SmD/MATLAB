C=[1 1 1 1];
A=[1 1 1 1;1 1 1 1];
b=[1;1];

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

Z=C.*res;

[Zmax,Zindex]=max(Z);
bfs=res(:,Zindex);

optval=[bfs' Zmax];
bfs_op=array2table(optval);
bfs_op.Properties.VariableNames(1:size(bfs_op,2))={'x1','x2','x3','x4','Z'}