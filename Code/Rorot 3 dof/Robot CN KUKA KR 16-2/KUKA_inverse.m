function [out] = KUKA_inverse(x,y,z,t)

[l1,l2,l3,d1]=Setup_dimension;

if(t==1||t==2)
    theta1 = atan2d(y,x);
    ctheta3 = ((l1-z).^2+(x-d1.*cosd(theta1)).^2+(y-d1.*sind(theta1)).^2-l3.^2-l2.^2)/(2.*l2.*l3);
    if(t==1)
        stheta3 = sqrt(1-ctheta3.^2); 
    else 
        stheta3 = -sqrt(1-ctheta3.^2);
    end
else
    theta1 = atan2d(-y,-x);
    ctheta3 = ((l1-z).^2+(x-d1.*cosd(theta1)).^2+(y-d1.*sind(theta1)).^2-l3.^2-l2.^2)./(2.*l2.*l3);
    if(t==3)
        stheta3 = sqrt(1-ctheta3.^2)
    else 
        stheta3 = -sqrt(1-ctheta3.^2)
    end
end
    theta3 = atan2d(stheta3,ctheta3);
    a = (x.^2+y.^2+(l1-z).^2-l3.^2-l2.^2-d1.^2-2.*l3.*l2.*cosd(theta3))./2./d1;
    theta2 = atan2d((l1-z),a)-atan2d(l3.*sind(theta3),l2+l3.*cosd(theta3));
    
    out = [theta1; theta2; theta3];
    
%     x = cosd(theta1).*(l3.*cosd(theta2+theta3)+l2.*cosd(theta2)+d1)
%     y = sind(theta1).*(l3*cosd(theta2+theta3)+l2.*cosd(theta2)+d1)
%     z = l1 - l2.*sind(theta2)-l3.*sind(theta2+theta3)

end