hi = input("The initial height of the projectile above the ground in meters:");
vo = input("the magnitude of the velocity in m/s:");
theta = input("the angle in degrees with respect to the +x-axis at which the projectile is fired:");
ax = input("the x-component of the acceleration, considering the sign, in m ⁄ s^2: ");
ay = input("the y-component of the acceleration, considering the sign, in m ⁄ s^2: ");

if ay == 0
    error("no free fall")
end


distance = sqrt((vo*sind(theta)).^2 - 4*(1/2*ay)*hi);
tcomp = (-vo*sind(theta) + distance )/ ay;

if tcomp <= 0 
   tmax = (-vo*sind(theta) - distance )/ ay;
   t=(0:0.1:tmax);
    x = vo*cosd(theta).*(t) + 1/2*ax*(t).^2;
        y = vo*sind(theta).*(t) + 1/2*ay.*(t).^2;
else
        x = vo.*cosd(theta).*(linspace(0,tcomp,0.1)) + 1/2*ax.*linspace(0,tcomp,0.1).^2;
        y = vo.*sind(theta).*linspace(0,tcomp,0.1) + (ay.*linspace(0,tcomp,0.1).^2)/2;
end      

plot(x,y,'-- r')
axis tight
grid on
xlabel('Path of the projectile in the x axis over time')
ylabel('Path of the projectile in the y axis over time')
title('Path of the Projectile')






    
    
   
    


