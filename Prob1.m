for n = 0:1:99
    %take the values lower than or equal to 9
 if n <= 9
     %stem plot the values at the same time applying the piecewise conditions
     stem(n,((n^2)-7)); hold on;
     
 else
     %take the values grater than 9
     ntest = true;
     w=10;
     
     % loop them back to the condition of the peicewise function
 while ntest==true  
     n = n - 10;
     if n < 10
         %stem plotting the values and adding the increment on n
     stem(n+w,((n^2)-7)); 
     hold on;
     ntest=false;
     end 
     w=w+10;
  end
   
 end
end

