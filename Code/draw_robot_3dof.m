% Hàm vẽ robot 3 DOF với các điểm nối đã tính toán
function draw_robot_3dof(p0, p1, p2, p3)
    draw_base(); % Vẽ base 
    draw_base2(); % Vẽ base 
    
    plot_link(p0(1:3), p1(1:3), 0.15, [1.0, 0.3, 0.0]); % Link màu xám
    
    plot_link(p1(1:3), p2(1:3), 0.1, [1.0, 0.3, 0.0]);
    plot_joint(p1(1:3), p2(1:3), 0.3, 0.1, [0, 0, 0]);
    
    plot_link(p2(1:3), p3(1:3), 0.1, [1.0, 0.3, 0.0]);
    plot_joint(p2(1:3), p3(1:3), 0.3, 0.1, [0, 0, 0]);
    
    % Vẽ tay kẹp (End Effector) tại điểm p3
    draw_end_effector(p3); % Gọi hàm vẽ tay kẹp tại điểm p3
   
    % Vẽ trục XYZ tại điểm cuối của robot
    %quiver3(p3(1), p3(2), p3(3), 0.5, 0, 0, 'Color', 'b', 'LineWidth', 1.5, 'MaxHeadSize', 1); % trục X
    %quiver3(p3(1), p3(2), p3(3), 0, 0.5, 0, 'Color', 'g', 'LineWidth', 1.5, 'MaxHeadSize', 1); % trục Y
    %quiver3(p3(1), p3(2), p3(3), 0, 0, 0.5, 'Color', 'r', 'LineWidth', 1.5, 'MaxHeadSize', 1); % trục Z
end
