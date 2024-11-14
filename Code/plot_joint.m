function plot_joint(p1, p2, L, radius, color)
    % p1, p2: tọa độ của 2 điểm trong không gian 3D dưới dạng cột vector [x; y; z]
    % L: khoảng cách giữa p3 và p4
    % radius: bán kính của hình trụ
    % color: màu sắc của hình trụ

    % Chuyển đổi p1 và p2 về dạng vector cột (nếu cần thiết)
    p1 = p1(:);  % Đảm bảo p1 là cột vector
    p2 = p2(:);  % Đảm bảo p2 là cột vector

    % Tính vector từ p1 đến p2
    v_p1p2 = p2 - p1;

    % Tính toán vector vuông góc với v_p1p2 trong không gian 3D
    if v_p1p2(1) ~= 0
        v_perpendicular = [-v_p1p2(2); v_p1p2(1); 0];
    elseif v_p1p2(2) ~= 0
        v_perpendicular = [0; -v_p1p2(3); v_p1p2(2)];
    else
        v_perpendicular = [0; v_p1p2(3); -v_p1p2(1)];
    end

    % Chuẩn hóa vector vuông góc
    v_perpendicular = v_perpendicular / norm(v_perpendicular);

    % Tính toán điểm p3 và p4 sao cho p3p4 cách nhau L và vuông góc với p1p2
    p3 = p1 + (L / 2) * v_perpendicular;
    p4 = p1 - (L / 2) * v_perpendicular;

    % Tạo lưới hình trụ giữa p3 và p4
    [X, Y, Z] = cylinder(radius, 20);

    % Tính chiều dài của hình trụ theo khoảng cách giữa p3 và p4
    Z = Z * norm(p4 - p3);

    % Tạo ma trận xoay để căn chỉnh hình trụ theo hướng p3 - p4
    R = vrrotvec2mat(vrrotvec([0 0 1], p4 - p3));

    % Xoay và di chuyển các điểm của hình trụ theo vị trí và hướng yêu cầu
    for i = 1:size(X, 1)
        for j = 1:size(X, 2)
            v = R * [X(i, j); Y(i, j); Z(i, j)];
            X(i, j) = v(1) + p3(1);
            Y(i, j) = v(2) + p3(2);
            Z(i, j) = v(3) + p3(3);
        end
    end

    % Vẽ hình trụ đặc giữa p3 và p4
    surf(X, Y, Z, 'FaceColor', color, 'EdgeColor', 'none', ...
         'FaceLighting', 'gouraud', 'AmbientStrength', 0.3);

    % Thêm hai mặt đầu để làm kín hình trụ, tạo cảm giác đặc
    fill3(X(1, :), Y(1, :), Z(1, :), color, 'EdgeColor', 'none'); % Mặt đầu
    fill3(X(2, :), Y(2, :), Z(2, :), color, 'EdgeColor', 'none'); % Mặt cuối
    
end
