% Hàm chính
function robot_arm_simulation_3dof_inverse_kinematic_test()
    % Thiết lập các tham số chiều dài
    L1 = 1; % Chiều dài đoạn 1
    L2 = 1; % Chiều dài đoạn 2
    L3 = 1; % Chiều dài đoạn 3

    % Khởi tạo góc quay và vận tốc góc ban đầu của các khớp
    theta1 = 0; theta2 = 0; theta3 = 0;
    omega1 = 0; omega2 = 0; omega3 = 0;
    
    % Thông số điều khiển PID
    Kp = 1; Ki = 0.00; Kd = 0.1;
    error_sum1 = 0; error_sum2 = 0; error_sum3 = 0;
    prev_error1 = 0; prev_error2 = 0; prev_error3 = 0;
    
    % Bước thời gian
    dt = 0.1;
    
    

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
    
    
    for t = 1:2000  % Điều chỉnh số bước lặp (ví dụ 1000 để chạy với step time 0.01)
        
        
        % Đặt vị trí đầu cuối mong muốn
        
        px = (12 * sin(0.01 * t) - 4 * sin(3 * 0.01 * t))/15;
        py = 1;
        pz = (13 * cos(0.01 * t) - 5 * cos(2 * 0.01 * t) - 2 * cos(3 * 0.01 * t) - cos(0.01 * t))/15+1;
        
        %px = 1;  %0.5*cos(0.1*t);  % Quỹ đạo x của điểm cuối
        %py = 1;  % Quỹ đạo y của điểm cuối
        %pz = 1;  %0.5*sin(0.1*t) + 1;  % Quỹ đạo z của điểm cuối (cố định độ cao)

        % Tính các góc cần thiết để đạt đến vị trí mong muốn
        [q1, q2, q3] = inverse_kinematics(px, py, pz, L1, L2, L3);

        % Điều khiển PID cho từng khớp
        % Khớp 1
        error1 = q1 - theta1;
        error_sum1 = error_sum1 + error1 * dt;
        d_error1 = (error1 - prev_error1) / dt;
        control1 = Kp * error1 + Ki * error_sum1 + Kd * d_error1;
        theta1 = theta1 + control1 * dt;  % Cập nhật góc của khớp
        omega1 = control1;  % Cập nhật vận tốc góc của khớp
        prev_error1 = error1;

        % Khớp 2
        error2 = q2 - theta2;
        error_sum2 = error_sum2 + error2 * dt;
        d_error2 = (error2 - prev_error2) / dt;
        control2 = Kp * error2 + Ki * error_sum2 + Kd * d_error2;
        theta2 = theta2 + control2 * dt;
        omega2 = control2;
        prev_error2 = error2;

        % Khớp 3
        error3 = q3 - theta3;
        error_sum3 = error_sum3 + error3 * dt;
        d_error3 = (error3 - prev_error3) / dt;
        control3 = Kp * error3 + Ki * error_sum3 + Kd * d_error3;
        theta3 = theta3 + control3 * dt;
        omega3 = control3;
        prev_error3 = error3;


        % Xóa các đối tượng cũ để vẽ lại
        cla;
        
        % Tính toán các điểm nối
        [p0, p1, p2, p3] = calculate_joint_positions_3dof(theta1, theta2, theta3, L1, L2, L3);
        
        % Vẽ robot với các link và khớp nối
        draw_robot_3dof(p0, p1, p2, p3);
        
        % Lưu vị trí của điểm cuối
        trajectory_x = [trajectory_x, p3(1)];
        trajectory_y = [trajectory_y, p3(2)];
        trajectory_z = [trajectory_z, p3(3)];
        
        % Vẽ quỹ đạo của điểm cuối
        plot_trajectory_end_effector(trajectory_x, trajectory_y, trajectory_z);
        
                % Vẽ lại nền
        surf(X, Y, Z, 'FaceAlpha', 0.3, 'EdgeColor', 'g', 'FaceColor', 'g');

        
        % Dừng 0.01 giây cho mỗi lần lặp để đạt đúng tần số lấy mẫu
        pause(dt);
    end

    % Hiển thị vị trí cuối cùng và góc quay
    disp(p3);
    disp(q1 * 180 / pi);
    disp(q2 * 180 / pi);
    disp(q3 * 180 / pi);
end
