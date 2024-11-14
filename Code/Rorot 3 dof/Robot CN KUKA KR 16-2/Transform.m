function [T,camera] = Transform(Org,x_axis,y_axis)

x0 = [x_axis(1)-Org(1),x_axis(2)-Org(2),x_axis(3)-Org(3)];
y0 = [y_axis(1)-Org(1),y_axis(2)-Org(2),y_axis(3)-Org(3)];
z0 = [x0(2)*y0(3)-y0(2)*x0(3),x0(3)*y0(1)-x0(1)*y0(3),x0(1)*y0(2)-y0(1)*x0(2)];

x1 =x0*1/sqrt(x0(1)^2+x0(2)^2+x0(3)^2);
y1 = y0*1/sqrt(y0(1)^2+y0(2)^2+y0(3)^2);
z1 = z0*1/sqrt(z0(1)^2+z0(2)^2+z0(3)^2);

R =[x1;y1;z1];

T1 = [R' Org'];
T1(4,:)=[0 0 0 1];

T = T1;
camera = z0;
end