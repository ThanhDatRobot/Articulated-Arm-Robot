function arrow_3d(x, y, z, dx, dy, dz, L, color)
    % Chuẩn hóa vector hướng
    direction = [dx, dy, dz] / norm([dx, dy, dz]);
    
    % Tính toán điểm kết thúc của thân mũi tên
    end_x = x + L * direction(1);
    end_y = y + L * direction(2);
    end_z = z + L * direction(3);
    
    % Dịch xuống một chút để thấy đầu mũi tên
    offset = 0.0 * L;  % Tỉ lệ dịch xuống
    x = x - offset * direction(1);
    y = y - offset * direction(2);
    z = z - offset * direction(3);

    % Vẽ thân mũi tên
    plot3([x, end_x], [y, end_y], [z, end_z], color, 'LineWidth', 2);

    % Vẽ đầu mũi tên dạng hình nón nhọn
    cone_height = 0.2 * L;         % Chiều cao của hình nón (20% chiều dài mũi tên)
    cone_radius = 0.1 * L;        % Bán kính đáy của hình nón
    [cx, cy, cz] = cylinder([cone_radius, 0], 20); % Tạo đáy hình tròn cho nón

    % Điều chỉnh vị trí của hình nón để nó nằm ở đầu mũi tên
    cz = cz * cone_height;          % Đặt chiều cao của hình nón
    cone_base_x = end_x - cone_height * direction(1);
    cone_base_y = end_y - cone_height * direction(2);
    cone_base_z = end_z - cone_height * direction(3);

    % Xoay và dịch chuyển hình nón đến vị trí chính xác
    for i = 1:size(cx, 1)
        for j = 1:size(cx, 2)
            % Xoay và dịch chuyển các điểm của hình nón
            point = [cx(i, j), cy(i, j), cz(i, j)]';
            rotated_point = rotation_matrix(direction) * point;
            cx(i, j) = rotated_point(1) + cone_base_x;
            cy(i, j) = rotated_point(2) + cone_base_y;
            cz(i, j) = rotated_point(3) + cone_base_z;
        end
    end

    % Vẽ hình nón (đầu mũi tên nhọn)
    surf(cx, cy, cz, 'FaceColor', color, 'EdgeColor', 'none');
end

function R = rotation_matrix(direction)
    % Hàm tạo ma trận xoay từ vector hướng
    z_axis = [0, 0, 1]';
    v = cross(z_axis, direction');
    s = norm(v);
    c = dot(z_axis, direction');
    Vx = [0, -v(3), v(2); v(3), 0, -v(1); -v(2), v(1), 0];
    if s == 0 % Vector đã trùng với trục Z
        R = eye(3);
    else
        R = eye(3) + Vx + Vx^2 * ((1 - c) / s^2);
    end
end