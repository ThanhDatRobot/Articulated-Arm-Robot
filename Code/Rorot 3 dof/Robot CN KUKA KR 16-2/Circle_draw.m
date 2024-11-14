function [x,y,z,n] = Circle_draw(Ox,Oy,r,start_angle,angle,time)

end_angle = start_angle +angle;
space = time*10;
t = linspace(start_angle,end_angle,space);

x = Ox + r*cosd(t);
y = Oy + r*sind(t);
z = 0.*t;

n = space;
end