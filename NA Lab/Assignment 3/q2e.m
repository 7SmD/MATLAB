x0=1.5;
t=.001;
i=1;
n=100;
p=0; 
f=@(x)x-((x^3+4*x^2-10)/(3*x^2+8*x));
while(i<n)
    x1=f(x0);
    if(abs(x1-x0)<t)
        p=1; 
fprintf("the root is %f\n",x1);
break; 
    end
    x0=x1;
    i=i+1;
end
 
if(p==0)
    fprintf("No root\n");
end 
