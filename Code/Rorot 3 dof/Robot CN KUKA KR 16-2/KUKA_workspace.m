[l1,l2,l3,d1] = Setup_dimension;

theta1 = linspace(-185,185,100);
theta2 = linspace(-155,35,100);
theta3 = linspace(-350,350,100);
theta11 = linspace(0,0,100);

[T1,T2,T3] = meshgrid(theta1,theta2,theta3);
[T11,T2,T3] = meshgrid(theta11,theta2,theta3);

X = cosd(T1).*(l3.*cosd(T2+T3)+l2.*cosd(T2)+d1);
Y = sind(T1).*(l3.*cosd(T2+T3)+l2.*cosd(T2)+d1);
Z = l1 - l2.*sind(T2) - l3.*(sind(T2+T3));

X1 = cosd(T11).*(l3.*cosd(T2+T3)+l2.*cosd(T2)+d1);
Y1 = sind(T11).*(l3.*cosd(T2+T3)+l2.*cosd(T2)+d1);
Z1 = l1 - l2.*sind(T2) - l3.*(sind(T2+T3));

figure();
subplot(2,2,1);
plot3(X(:),Y(:),Z(:),'b.');
xlabel('trucx');  
ylabel('trucy');
zlabel('trucz');
text(0,0,0,'O','FontSize',16);
axis square;

subplot(2,2,2);
plot(Y(:),Z(:),'g.');
xlabel('trucy');
ylabel('trucz');
text(0,0,'O','FontSize',16);
axis square;

subplot(2,2,3);
plot(X(:),Y(:),'g.');
xlabel('trucx');
ylabel('trucy');
text(0,0,'O','FontSize',16);
axis square;

figure()
subplot(2,2,1);
plot3(X1(:),Y1(:),Z1(:),'b.');
xlabel('trucx');  
ylabel('trucy');
zlabel('trucz');
text(0,0,0,'O','FontSize',16);
axis square;

subplot(2,2,2);
plot(X1(:),Z1(:),'b.');
xlabel('trucx');  
ylabel('trucz');
text(0,0,0,'O','FontSize',16);
axis square;

subplot(2,2,3);
plot(X(:),Y(:),'g.');
xlabel('trucx');  
ylabel('trucy');
text(0,0,0,'O','FontSize',16);
axis square;