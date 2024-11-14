function robot_arm_simulation_3dof_wspace()
    % Thiết lập các tham số chiều dài
    L1 = 1; % Chiều dài đoạn 1
    L2 = 1; % Chiều dài đoạn 2
    L3 = 1; % Chiều dài đoạn 3

    % Tạo lưới trên nền và thiết lập cửa sổ
    figure;
    hold on;
    axis equal;
    grid on;
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    view(3);
    xlim([-3, 3]);
    ylim([-3, 3]);
    zlim([-1, 3]);
    [X, Y, Z] = create_ground_grid();
    surf(X, Y, Z, 'FaceAlpha', 0.3, 'EdgeColor', 'g', 'FaceColor', 'g');

    % Xác định phạm vi các góc khớp
    theta1_range = linspace(-pi, pi, 30);  % Thay đổi góc khớp 1
    theta2_range = linspace(-pi/2, pi/2, 30);  % Thay đổi góc khớp 2
    theta3_range = linspace(-pi/2, pi/2, 30);  % Thay đổi góc khớp 3

    % Biến để lưu trữ khoảng cách xa nhất
    max_distance = 0;

    % Tính khoảng cách xa nhất mà điểm cuối có thể đạt được
    for theta1 = theta1_range
        for theta2 = theta2_range
            for theta3 = theta3_range
                % Tính toán vị trí của điểm cuối
                [p0, p1, p2, p3] = calculate_joint_positions_3dof(theta1, theta2, theta3, L1, L2, L3);
                
                % Tính khoảng cách từ gốc (p0) đến điểm cuối (p3)
                distance = sqrt(p3(1)^2 + p3(2)^2 + p3(3)^2);
                
                % Cập nhật khoảng cách xa nhất
                if distance > max_distance
                    max_distance = distance;
                end
            end
        end
    end

    % Tạo lưới mặt cầu và giữ lại các phần có z >= 0
    [sphere_x, sphere_y, sphere_z] = sphere(50);  % Tạo lưới mặt cầu
    sphere_x = sphere_x * max_distance;
    sphere_y = sphere_y * max_distance;
    sphere_z = sphere_z * max_distance;
    
    % Chỉ giữ lại các điểm có z >= 0
    sphere_x(sphere_z < 0) = NaN;
    sphere_y(sphere_z < 0) = NaN;
    sphere_z(sphere_z < 0) = NaN;

    % Vẽ mặt cầu với bán kính là khoảng cách xa nhất, chỉ phần z >= 0
    surf(sphere_x, sphere_y, sphere_z, ...
         'FaceAlpha', 0.4, 'EdgeColor', 'none', 'FaceColor', [0.6, 0.8, 1]);  
    % Màu xanh nhạt và độ trong suốt là 0.4

    % Vẽ lại nền
    surf(X, Y, Z, 'FaceAlpha', 0.3, 'EdgeColor', 'g', 'FaceColor', 'g');

    % Vẽ robot với các link và khớp nối
    theta1 = 0;
    theta2 = pi/6;
    theta3 = -pi/6;
    [p0, p1, p2, p3] = calculate_joint_positions_3dof(theta1, theta2, theta3, L1, L2, L3);
    draw_robot_3dof(p0, p1, p2, p3);

    % Cập nhật đồ họa
    pause(0.1);
end
