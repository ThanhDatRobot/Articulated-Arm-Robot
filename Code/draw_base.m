% Hàm vẽ đế cố định
function draw_base()
    base_height = 0.75;
    base_radius = 0.22;
    [X, Y, Z] = cylinder(base_radius, 20);
    Z = Z * base_height;
    surf(X, Y, Z, 'FaceColor', [0.3, 0.3, 0.3], 'EdgeColor', 'none', 'FaceLighting', 'gouraud', 'AmbientStrength', 0.3);
    % Vẽ mặt đáy dưới của đế tại z = 0
    fill3(X(1, :), Y(1, :), Z(1, :), 'k', 'EdgeColor', 'none');
    % Vẽ mặt đáy trên của đế tại z = base_height
    fill3(X(2, :), Y(2, :), Z(2, :), 'k', 'EdgeColor', 'none');
end