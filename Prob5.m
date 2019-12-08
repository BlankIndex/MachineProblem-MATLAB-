
n=(0:198);
x=sin((3*pi.*n)/100);
i=1;
y=[];

while i ~= 198
    if n(i) == 0  
        y(i) = -1.5.*x(i) + 2.*x(i + 1) - 0.5.*x(i + 2);
        
    elseif n(i)>0 && n(i)<198
        y(i) = 0.5.*x(i + 1) -0.5.*x(i - 1);
        
    elseif n(i)==198 
        y(i)=1.5.*(x(i)) - 2.*x(i - 1) + 0.5.*x(i - 2);
       
    end
    i = i+1;
end


plot(x)
hold on
plot(y)
legend('x(n)','y(n)')
ylabel("Range of x and y with respect to n")
xlabel("domain of x and y with respect to n")
title("Plot of x(n) and y(n)")
