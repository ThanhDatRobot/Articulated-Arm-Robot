function p3 = find_point_on_line(p1, p2, r)
    % Tính vector chỉ phương từ p2 đến p1
    direction_vector = p1(1:3) - p2(1:3);

    % Chuẩn hóa vector chỉ phương
    unit_vector = direction_vector / norm(direction_vector);

    % Tính điểm p3 nằm trên đường thẳng và cách p2 một khoảng r
    p3 = [p2(1:3) - r * unit_vector; p2(4)];
end
