% Hàm chính
function robot_arm_simulation_3dof_inverse_kinematic()
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

    % Mảng để lưu trữ vị trí của điểm cuối
    trajectory_x = [];
    trajectory_y = [];
    trajectory_z = [];
    
    for t = 1:100  % Điều chỉnh số bước lặp (ví dụ 100)
        % Đặt vị trí đầu cuối mong muốn
        px = 0.5*cos(0.1*t);  % Quỹ đạo x của điểm cuối
        py = 1;  % Quỹ đạo y của điểm cuối
        pz = 0.5*sin(0.1*t)+1;  % Quỹ đạo z của điểm cuối (cố định độ cao)

        % Tính các góc cần thiết để đạt đến vị trí mong muốn
        [q1, q2, q3] = inverse_kinematics(px, py, pz, L1, L2, L3);

        % Tính toán các điểm nối
        [p0, p1, p2, p3] = calculate_joint_positions_3dof(q1, q2, q3, L1, L2, L3);

        % Lưu vị trí của điểm cuối
        trajectory_x = [trajectory_x, p3(1)];
        trajectory_y = [trajectory_y, p3(2)];
        trajectory_z = [trajectory_z, p3(3)];

        % Xóa các đối tượng cũ để vẽ lại
        cla;

        % Vẽ lại nền
        surf(X, Y, Z, 'FaceAlpha', 0.3, 'EdgeColor', 'g', 'FaceColor', 'g');

        % Vẽ robot với các link và khớp nối
        draw_robot_3dof(p0, p1, p2, p3);
        theta1 = q1;
        draw_codinate(theta1, p0, p1, p2, p3);

        % Vẽ quỹ đạo của điểm cuối
        plot_trajectory_end_effector(trajectory_x, trajectory_y, trajectory_z);
        pause(0.1);
    end
        disp(p3);
        disp(q1*180/pi);
        disp(q2*180/pi);
        disp(q3*180/pi);
end