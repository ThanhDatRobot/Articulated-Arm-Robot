function plot_link(p1, p2, radius, color)
    % Tạo lưới hình trụ với n mặt bên
    [X, Y, Z] = cylinder(radius, 20);
    
    % Tính chiều dài của link theo khoảng cách giữa p1 và p2
    Z = Z * norm(p2 - p1);
    
    % Tạo ma trận xoay để căn chỉnh hình trụ theo hướng p2 - p1
    R = vrrotvec2mat(vrrotvec([0 0 1], p2 - p1));
    
    % Xoay và di chuyển các điểm của hình trụ theo vị trí và hướng yêu cầu
    for i = 1:size(X, 1)
        for j = 1:size(X, 2)
            v = R * [X(i, j); Y(i, j); Z(i, j)];
            X(i, j) = v(1) + p1(1);
            Y(i, j) = v(2) + p1(2);
            Z(i, j) = v(3) + p1(3);
        end
    end
    
    % Vẽ hình trụ đặc
    surf(X, Y, Z, 'FaceColor', color, 'EdgeColor', 'none', ...
         'FaceLighting', 'gouraud', 'AmbientStrength', 0.3);
     
    % Thêm hai mặt đầu để làm kín hình trụ, tạo cảm giác đặc
    fill3(X(1, :), Y(1, :), Z(1, :), color, 'EdgeColor', 'none'); % Mặt đầu
    fill3(X(2, :), Y(2, :), Z(2, :), color, 'EdgeColor', 'none'); % Mặt cuối
end
