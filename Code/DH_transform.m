function T = DH_transform(theta, d, a, alpha)
    % DH_transform - Tạo ma trận biến đổi theo phương pháp Denavit-Hartenberg
    %
    % Đầu vào:
    %   theta - Góc xoay quanh trục z
    %   d     - Độ dịch chuyển dọc theo trục z
    %   a     - Độ dịch chuyển dọc theo trục x
    %   alpha - Góc xoay quanh trục x
    %
    % Đầu ra:
    %   T - Ma trận biến đổi 4x4

    T = [cos(theta), -sin(theta)*cos(alpha), sin(theta)*sin(alpha), a*cos(theta);
         sin(theta), cos(theta)*cos(alpha), -cos(theta)*sin(alpha), a*sin(theta);
         0, sin(alpha), cos(alpha), d;
         0, 0, 0, 1];
end
