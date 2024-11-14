% Hàm vẽ robot 6 DOF với các điểm nối đã tính toán
function draw_robot_3dofver2(p0, p1, p2, p3)
    draw_base(); % Vẽ base 
    
    plot_link(p0(1:3), p1(1:3), 0.15, [0.5, 0.5, 0.5]); % Link màu xám
    
    drawsquarepatch(p1(1:3), p2(1:3), 0.2, [0.7, 0.1, 0.1]);
    plot_joint(p1(1:3), p2(1:3), 0.3, 0.1, [0, 0, 0]);
    
    drawsquarepatch(p2(1:3), p3(1:3), 0.2, [0.1, 0.7, 0.1]);
    plot_joint(p2(1:3), p3(1:3), 0.3, 0.1, [0, 0, 0]);
    
    % Vẽ tay kẹp (End Effector) tại điểm p3
    draw_end_effector(p3); % Gọi hàm vẽ tay kẹp tại điểm p3
   
    % Vẽ trục XYZ tại điểm cuối của robot
    %quiver3(p3(1), p3(2), p3(3), 0.5, 0, 0, 'Color', 'b', 'LineWidth', 1.5, 'MaxHeadSize', 1); % trục X
    %quiver3(p3(1), p3(2), p3(3), 0, 0.5, 0, 'Color', 'g', 'LineWidth', 1.5, 'MaxHeadSize', 1); % trục Y
    %quiver3(p3(1), p3(2), p3(3), 0, 0, 0.5, 'Color', 'r', 'LineWidth', 1.5, 'MaxHeadSize', 1); % trục Z
end
