function draw_arrow1(p1,p2,color)
L = 0.5; 
direction_unit_vector = unit_direction_vector(p1, p2);
arrow_3d(p1(1), p1(2), p1(3), direction_unit_vector(1), direction_unit_vector(2), direction_unit_vector(3), L, color);  % Gọi hàm với các tham số trên
end
