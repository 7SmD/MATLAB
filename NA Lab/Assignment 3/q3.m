a=1.3; b=1.5; a1=0; b1=1; 
acc=input("Input Accuracy"); 
N= input("Maximum number of iterations"); f = @(x) atan(4*x); F = @(x) (tan(x)-4*x); g = @(x) (tan(x)/4); if(F(a)*F(b)>0) 
 
disp("Incorrect interval"); 
 
else 
    if(F(a)==0) 
 
disp(a); 
 
    else         if(F(b)==0) 
 
disp(b); 
         else if(N<1) disp("Incorrect value of N"); 
 
    else         if(f(a)==0) 
 
disp(a); 
         else 
if(f(b)==0) 
 
disp(b); 
             else i = 1; x1 = a; x2= b; flag =0; 
while(i<=N&&x1<=b) 
    x2 = f(x1);     if(abs(x1-x2)<=acc)          flag =1;         break;     end; i=i+1;     x1=x2; end; j=1; x3= a1; x4= b1; flag1= 0; while(j<=N&&x3<=b) 
    x4 = g(x3);     if(abs(x4-x3)<=acc)          flag1 =1;         break;     end;     j=j+1;     x3=x4; end; if(flag==1) disp("Root is"); disp(x2); else disp("No root"); end; if(flag1==1) disp("Root is"); disp(x4); else fprintf("No root");   end; 
              end;             end;          end;        end;     end; end; 
