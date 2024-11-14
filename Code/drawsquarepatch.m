function drawsquarepatch(p1, p2, side_length, color)
[p11, p12, p13, p14] = findpointsquare(p1, p2, side_length);
[p21, p22, p23, p24] = findpointsquare(p2, p1, side_length);

% Vẽ mặt bên trái (tạo từ các điểm p11, p12, p13, p14)
fill3([p11(1) p12(1) p14(1) p13(1)], [p11(2) p12(2) p14(2) p13(2)], [p11(3) p12(3) p14(3) p13(3)], color, 'FaceAlpha', 1, 'EdgeColor', 'k');

% Vẽ mặt bên phải (tạo từ các điểm p21, p22, p23, p24)
fill3([p21(1) p22(1) p24(1) p23(1)], [p21(2) p22(2) p24(2) p23(2)], [p21(3) p22(3) p24(3) p23(3)], color, 'FaceAlpha', 1, 'EdgeColor', 'k');

% Vẽ mặt bên trên (tạo từ các điểm p11, p12, p21, p22)
fill3([p11(1) p12(1) p24(1) p23(1)], [p11(2) p12(2) p24(2) p23(2)], [p11(3) p12(3) p24(3) p23(3)], color, 'FaceAlpha', 1, 'EdgeColor', 'k');

% Vẽ mặt bên dưới (tạo từ các điểm p13, p14, p23, p24)
fill3([p13(1) p14(1) p22(1) p21(1)], [p13(2) p14(2) p22(2) p21(2)], [p13(3) p14(3) p22(3) p21(3)], color, 'FaceAlpha', 1, 'EdgeColor', 'k');

% Vẽ mặt trước (tạo từ các điểm p11, p13, p21, p23)
fill3([p11(1) p13(1) p21(1) p23(1)], [p11(2) p13(2) p21(2) p23(2)], [p11(3) p13(3) p21(3) p23(3)], color, 'FaceAlpha', 1, 'EdgeColor', 'k');

% Vẽ mặt sau (tạo từ các điểm p12, p14, p22, p24)
fill3([p12(1) p14(1) p22(1) p24(1)], [p12(2) p14(2) p22(2) p24(2)], [p12(3) p14(3) p22(3) p24(3)], color, 'FaceAlpha', 1, 'EdgeColor', 'k');
end