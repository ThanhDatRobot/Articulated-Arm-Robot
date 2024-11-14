% Hàm chính
function robot_arm_simulation_3dof_inverse_kinematic_square()
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
    
    % Quỹ đạo hình vuông
    side_length = 2;  % Độ dài cạnh của hình vuông
    t_max = 4 * side_length; % Tổng chiều dài quỹ đạo (4 cạnh)
    
    % Lặp qua các điểm quỹ đạo theo hình vuông
    for t = 0:0.1:t_max  % Điều chỉnh số bước lặp (ví dụ 100 bước)
        % Xác định các tọa độ theo quỹ đạo hình vuông
        if t <= side_length
            % Di chuyển từ điểm (0,0) đến (side_length, 0) (cạnh đầu tiên)
            px = t-1;
            py = -1;
        elseif t <= 2 * side_length
            % Di chuyển từ (side_length, 0) đến (side_length, side_length) (cạnh thứ hai)
            px = side_length-1;
            py = t - side_length-1;
        elseif t <= 3 * side_length
            % Di chuyển từ (side_length, side_length) đến (0, side_length) (cạnh thứ ba)
            px = side_length - (t - 2 * side_length)-1;
            py = side_length-1;
        else
            % Di chuyển từ (0, side_length) đến (0, 0) (cạnh thứ tư)
            px = -1;
            py = side_length - (t - 3 * side_length)-1;
        end
        pz = 0.8;  % Quỹ đạo z của điểm cuối (cố định độ cao)

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
        draw_robot_3dofver2(p0, p1, p2, p3);
        theta1 = q1;
        draw_codinate(theta1, p0, p1, p2, p3);

        % Vẽ quỹ đạo của điểm cuối
        plot_trajectory_end_effector(trajectory_x, trajectory_y, trajectory_z);
        pause(0.1);  % Dừng 0.1 giây giữa các bước
    end
    %disp('Quỹ đạo điểm cuối:');
    %disp([trajectory_x' trajectory_y' trajectory_z']);
end
