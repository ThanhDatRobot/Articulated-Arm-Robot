function codinate_base(q1)
pz1 = [0; 0; 0; 1];   % Tọa độ của p1
pz2 = [1; 0; 0; 0];   % Tọa độ của p1
Rz1 = [cos(q1), -sin(q1), 0,0;
      sin(q1), cos(1), 0,0;
      0,0,0,0;
      0, 0, 0,1];

Rz2 = [cos(q1+pi/2), -sin(q1+pi/2), 0,0;
      sin(q1+pi/2), cos(q1+pi/2), 0,0;
      0,0,0,0;
      0, 0, 0,1];  
pz3 = Rz1 * pz2;
pz4 = Rz2 * pz2;
color1 = 'r';
color2 = 'b';
color3 = 'g';
draw_arrow1(pz1, pz3, color1);
draw_arrow1(pz1, pz4, color2);
[p5, p6] = find_p5p6(pz1, pz3, pz1, pz4, 1);
draw_arrow1(p5, p6, color3);
%quivercustom_end(p1,p3);
end

function [p5, p6] = find_p5p6(p1, p2, p3, p4, r)
    % Tính vector chỉ phương của p1p2 và p3p4
    v_p1p2 = p2(1:3) - p1(1:3);  % Vector từ p1 đến p2
    v_p3p4 = p4(1:3) - p3(1:3);  % Vector từ p3 đến p4

    % Tính vector pháp tuyến của mặt phẳng chứa p1p2 và p3p4
    normal_vector = cross(v_p1p2, v_p3p4);

    % Chuẩn hóa vector pháp tuyến để tạo vector đơn vị
    unit_normal_vector = normal_vector / norm(normal_vector);

    % Tạo điểm p5 và p6 sao cho p5p6 vuông góc với mặt phẳng
    p5 = p1;  % p5 trùng với p1
    p6 = [p1(1:3) + r * unit_normal_vector; p1(4)];  % Giữ nguyên thành phần w từ p1
end
