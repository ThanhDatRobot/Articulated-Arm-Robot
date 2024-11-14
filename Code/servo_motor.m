function [theta, omega] = servo_motor(K, J, B, theta_target, Kp, Ki, Kd, theta, omega, dt)
    % Mô tả động cơ servo với điều khiển PID
    % K: Hệ số mô-men xoắn của động cơ
    % J: Quán tính của động cơ (kg.m^2)
    % B: Hệ số ma sát (Nm.s)
    % theta_target: Góc mục tiêu (rad)
    % Kp: Hệ số tỉ lệ PID
    % Ki: Hệ số tích phân PID
    % Kd: Hệ số đạo hàm PID
    % theta: Góc quay hiện tại (rad)
    % omega: Vận tốc góc hiện tại (rad/s)
    % dt: Bước thời gian
    
    % Biến PID tĩnh để lưu lỗi tích phân và lỗi trước đó
    persistent integral e_prev
    if isempty(integral)
        integral = 0; % Khởi tạo tích phân lỗi
    end
    if isempty(e_prev)
        e_prev = 0;   % Khởi tạo lỗi trước đó
    end
    
    % Lỗi hiện tại
    error = theta_target*180/pi - theta;
    
    % Tính toán thành phần PID
    integral = integral + error * dt;  % Tích phân của lỗi
    derivative = (error - e_prev) / dt; % Đạo hàm của lỗi
    u_pid = Kp * error + Ki * integral + Kd * derivative;  % Mô-men xoắn điều khiển PID
    
    % Mô-men xoắn từ động cơ (có thể kết hợp với PID ở đây)
    tau = K * u_pid;  % Mô-men xoắn điều khiển
    
    % Phương trình động lực học của động cơ servo (phương trình 2 bậc)
    alpha = (tau - B * omega) / J;  % Gia tốc góc (rad/s^2)
    
    % Cập nhật vận tốc góc và góc quay theo phương trình động học
    omega = omega + alpha * dt;
    theta = theta + omega * dt;
    
    % Cập nhật lỗi trước cho bước tiếp theo
    e_prev = error;
end
