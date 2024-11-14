function [x,y,z,n] = Line_draw(x0,y0,z0,x1,y1,z1,time)

space = time*10;
t = linspace(0,time,space);

a = (x1-x0)/time;
b = (y1-y0)/time;
c = (z1-z0)/time;

x = x0 + a.*t;
y = y0 + b.*t;
z = z0 + c.*t;

n = (time*10);

end