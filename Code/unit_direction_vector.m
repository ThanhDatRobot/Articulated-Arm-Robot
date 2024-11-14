function direction_unit_vector = unit_direction_vector(p1, p2)
    % Tính vector từ p1 đến p2
    v = p2 - p1;
    
    % Tính độ dài (norm) của vector v
    norm_v = norm(v);
    
    % Nếu độ dài vector không phải là 0, tính vector đơn vị
    if norm_v ~= 0
        direction_unit_vector = v / norm_v;
    else
        error('Vector p1 và p2 trùng nhau, không thể tính vector chỉ phương');
    end
end
