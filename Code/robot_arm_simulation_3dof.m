% Hàm chính
function robot_arm_simulation_3dof()
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

    % Giá trị góc ban đầu
    %theta1 = 0;
    %theta2 = 0;
    %theta3 = 0;

    % Tạo vòng lặp để làm cho góc thay đổi theo thời gian
    %for t = 1:10  % Điều chỉnh số bước lặp (ví dụ 100)
        % Thay đổi giá trị của các góc theo thời gian
        theta1 = 0;  % Điều chỉnh bước thời gian (0.1)
        theta2 = pi/6;  % Điều chỉnh bước thời gian (0.1)
        theta3 = pi/6;  % Điều chỉnh góc theo thời gian

        % Tính toán các điểm nối
        [p0, p1, p2, p3] = calculate_joint_positions_3dof(theta1, theta2, theta3, L1, L2, L3);

        % Lưu vị trí của điểm cuối
        trajectory_x = [trajectory_x, p3(1)];
        trajectory_y = [trajectory_y, p3(2)];
        trajectory_z = [trajectory_z, p3(3)];

        % Xóa các đối tượng cũ để vẽ lại
        cla;

        % Vẽ lại nền
        surf(X, Y, Z, 'FaceAlpha', 0.3, 'EdgeColor', 'g', 'FaceColor', 'g');

        % Vẽ robot với các link và khớp nối
        draw_robot_3dofver2(p0, p1, p2, p3);
        draw_codinate(theta1, p0, p1, p2, p3);

        % Vẽ quỹ đạo của điểm cuối
        plot_trajectory_end_effector(trajectory_x, trajectory_y, trajectory_z);

        % Cập nhật đồ họa (dừng lại một chút để xem chuyển động)
        pause(0.1);
    %end
    disp(p3);
end
