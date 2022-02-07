c=[3 2];
A=[2 4;3 5];
B=[8;15];

x1=0:1:max(B);
x21=(B(1)-A(1,1).*x1)./A(1,2);
x22=(B(2)-A(2,1).*x1)./A(2,2);

x21=max(0,x21);
x22=max(0,x22);

plot(x1,x21,x1,x22)
legend('2x1+4x2=8','3x1+5x2=15');

cx1=find(x1==0);
c1=find(x21==0);
line1=[x1(:,[c1 cx1]);x21(:,[c1 cx1])]';

c2=find(x22==0);
line2=[x1(:,[c2 cx1]);x22(:,[c2 cx1])]';

ans=unique([line1;line2],'rows')