% Hàm tạo lưới nền
function [X, Y, Z] = create_ground_grid()
    [X, Y] = meshgrid(-5:0.2:5, -5:0.2:5);
    Z = zeros(size(X));
end