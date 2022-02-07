n=input('num of points : ');

for i=1:n
    x(i)=input("Enter the value of x : ");
    y(i)=input("Enter the value of y : ");
end

p=input("Enter the points where you want to find approx value : ");
for i=1:n
    l(i)=1;
    for j=1:n
        
        if(j~=i)
            l(i)=(p-x(j))*l(i)/(x(i)-x(j));
        end 
        
    end
end
s=0;
for i=1:n
    s=s+(l(i)*y(i));
end
disp("the approx value of the given point is : ");
disp(s)
