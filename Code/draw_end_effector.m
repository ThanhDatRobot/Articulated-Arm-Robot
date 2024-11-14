% Hàm vẽ tay kẹp (end effector) tại vị trí p3
function draw_end_effector(p3)
    % Giả sử tay kẹp là một hình cầu nhỏ (radius = 0.1)
    [X, Y, Z] = sphere; % Tạo lưới cho hình cầu
    radius = 0.1; % Đặt bán kính của tay kẹp
    
    % Vẽ hình cầu tay kẹp (màu đỏ) tại vị trí p3
    surf(p3(1) + radius*X, p3(2) + radius*Y, p3(3) + radius*Z, ...
        'FaceColor', [0, 0, 0], 'EdgeColor', 'none'); % Màu đỏ, không có đường biên
end
