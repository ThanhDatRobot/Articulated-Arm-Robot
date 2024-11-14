% Hàm tính toán vị trí các điểm nối dựa trên các góc khớp và chiều dài đoạn cho 6 DOF
function [p0, p1, p2, p3] = calculate_joint_positions_3dof(theta1, theta2, theta3, L1, L2, L3)
    T01 = DH_transform(theta1, L1, 0, pi/2);
    T12 = DH_transform(theta2, 0, L2, 0);
    T23 = DH_transform(theta3, 0, L3, 0);
    
    
    T02 = T01 * T12;
    T03 = T02 * T23;

    origin = [0; 0; 0; 1];
    p0 = origin;
    p1 = T01 * origin;
    p2 = T02 * origin;
    p3 = T03 * origin;
end
