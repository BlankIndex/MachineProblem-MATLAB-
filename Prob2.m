
%input the points
x1= input("abscisa(x) of the 1st point:");
y1 = input("ordinate(y) of the 1st point:");

x2= input("abscisa(x) of the 2nd point:");
y2 = input("ordinate(y) of the 2nd point:");

x3= input("abscisa(x) of the 3rd point:");
y3 = input("ordinate(y) of the 3rd point:");

P1=[x1,y1];
P2=[x2,y2];
P3=[x3,y3];
onecol=[1;1;1];

pointmatrix =[[P1;P2;P3],onecol];
squarematrix=[((x1^2)+(y1^2));((x2^2)+(y2^2));((x3^2)+(y3^2))];

%laplace expansion

%x^2+y^2
    square=det(pointmatrix);
%-x
    x=det([squarematrix,pointmatrix(:,[2,3])]);
%+y
    y=det([squarematrix,pointmatrix(:,[1,3])]);
%constant
    const=det([squarematrix,pointmatrix(:,[1,2])]);

%equation (general form of the circle)
C=[square,square,-x,y,-const];
Center=[-x/-(2*square),y/-(2*square)];

%error checking ( if points lie on the same circle)

r1 = norm(Center-P1);
r2 = norm(Center-P2);
r3 = norm(Center-P3);

%error catching (points not lying on the same circle)
if round(r1) ~= round(r2) || round(r2) ~= round(r3) || round(r3) ~= round(r1)
    error("not in the same circle")
end

disp("Center:"),disp(Center)
disp("Radius:"),disp(r1)
disp("Coeficients (D,E,F)")
disp([-x/square,y/square,-const/square])


 
  
  
  
  
  