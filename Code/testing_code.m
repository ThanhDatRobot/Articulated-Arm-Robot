K = 1;    % Hệ số mô-men xoắn (Nm/rad)
J = 0.01; % Quán tính (kg.m^2)
B = 0.1;  % Hệ số ma sát (Nm.s)
theta_target = pi / 2; % Góc mục tiêu (90 độ)

Kp = 2;  % Hệ số tỉ lệ PID
Ki = 0.0;   % Hệ số tích phân PID
Kd = 0.1; % Hệ số đạo hàm PID

t = 5;    % Thời gian mô phỏng (5 giây)

[theta, omega] = servo_motor(t, K, J, B, theta_target, Kp, Ki, Kd);
