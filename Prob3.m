
count=input("Number of data points:");
if count > 10
    disp("the program is only utilizing 10th degree polynomials for approximation")
    disp("data points beyond 10 might give you a less accurate approximation")
end
   
    
for i = 1:count
    x(i) = input('x value:');
    y(i)= input('y value:');
end

datamatrix=[transpose(x),transpose(y)];

for i = 1:10
    e(i)=norm(y-polyval(polyfit(x,y,i),x));
end

ie=find(e == min(e(:)),1);

disp("The vector that best approximates the graph is:")
polyfit(x,y,ie)

disp("least norm error:")
disp(e);

