function [q1, q2, q3] = inverse_kinematics(px, py, pz, L1, L2, L3)
    % px, py, pz: Tọa độ mục tiêu của tay robot trong không gian 3D
    % L1, L2, L3: Độ dài các liên kết của robot (từ khớp đến khớp)
     q1 = atan2(py,px);
     c3 = ((pz-L1)^2+px^2+py^2-L3^2-L2^2)/(2*L2*L3);
     s3 = sqrt(1-c3^2);
     q3 = -atan2(s3,c3);
     %a = (px^2+py^2+(pz-L1)^2-L3^2-L2^2-L1^2-2*L3.*L2.*cos(q3))/2/L1;
     %q2 = atan2((pz-L1),a)-atan2(L3*sin(q3),L2+L3.*cos(q3));

    
    % Calculate q1
    %q1 = atan2(py, px);
    r  = sqrt(px^2+py^2);
    %D  = -sqrt((pz-L1)^2+r^2);
    %c3 =((D^2-L3^2-L2^2)/(2*L2*L3));
    %s3 = sqrt(1-c3^2);
    %q3 = atan2(s3,c3)-pi/3;
    q2 = (atan2(r,(L1-pz))-atan2(L2+L3*cos(q3),L3*sin(-q3)));
end
