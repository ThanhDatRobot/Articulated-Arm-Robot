function [home,A] = Set_home(x1, y1,z1,time)


x0 = 1768;
y0 = 0;
z0 = 675;

z1 = z1+10;

a = (x1-x0)/time;
b = (y1-y0)/time;
c = (z1-z0)/time;

t = linspace(0,time,10*time);
x = x0 +a.*t;
y = y0 +b.*t;
z = z0 +c.*t;


home = [x;y;z];
A = [x1,y1,z1];
end