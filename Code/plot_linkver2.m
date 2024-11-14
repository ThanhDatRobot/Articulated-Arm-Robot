function plot_linkver2(p1, p2, width, color)
    % Tính vector hướng và chiều dài của link
    dir = p2 - p1;
    length = norm(dir);
    dir = dir / length;  % Chuẩn hóa hướng
    
    % Tạo ma trận xoay để căn chỉnh hình hộp chữ nhật theo hướng p2 - p1
    R = vrrotvec2mat(vrrotvec([0 0 1], dir));
    
    % Tạo các điểm góc của hình hộp chữ nhật ban đầu với chiều rộng và chiều dài cho trước
    w = width / 2;  % Nửa độ rộng của hình hộp
    vertices = [
        -w, -w, 0;
         w, -w, 0;
         w,  w, 0;
        -w,  w, 0;
        -w, -w, length;
         w, -w, length;
         w,  w, length;
        -w,  w, length
    ]';
    
    % Xoay và dịch chuyển các điểm góc theo vị trí và hướng yêu cầu
    vertices = R * vertices + p1';
    
    % Định nghĩa các mặt của hình hộp chữ nhật
    faces = [
        1, 2, 6, 5;
        2, 3, 7, 6;
        3, 4, 8, 7;
        4, 1, 5, 8;
        1, 2, 3, 4;
        5, 6, 7, 8;
    ];
    
    % Vẽ hình hộp chữ nhật với các cạnh và độ trong suốt
    patch('Vertices', vertices', 'Faces', faces, 'FaceColor', color, ...
          'EdgeColor', 'k', 'LineWidth', 1.5, 'FaceAlpha', 0.8, ...
          'FaceLighting', 'gouraud', 'AmbientStrength', 0.3);
end
