function [p11, p12, p13, p14]=findpointsquare(p1, p2, side_length)
    % Tìm các điểm của hình vuông theo yêu cầu
    [p11, p12, p13, p14] = findSquarePointsPerpendicularToP1P2(p1, p2, side_length);

    % Vẽ các điểm và đoạn thẳng tạo thành hình vuông

    
    % Vẽ đoạn thẳng p1p2
    %plot3([p1(1), p2(1)], [p1(2), p2(2)], [p1(3), p2(3)], 'k--', 'LineWidth', 1.5);
    
    % Vẽ các điểm của hình vuông
    %plot3(p1(1), p1(2), p1(3), 'bo', 'MarkerSize', 8, 'DisplayName', 'p1 (center)');
    %plot3(p11(1), p11(2), p11(3), 'ro', 'MarkerSize', 8, 'DisplayName', 'p11');
    %plot3(p12(1), p12(2), p12(3), 'ro', 'MarkerSize', 8, 'DisplayName', 'p12');
    %plot3(p13(1), p13(2), p13(3), 'go', 'MarkerSize', 8, 'DisplayName', 'p13');
    %plot3(p14(1), p14(2), p14(3), 'go', 'MarkerSize', 8, 'DisplayName', 'p14');
    
    % Nối các điểm để tạo thành hình vuông
    %plot3([p11(1), p12(1)], [p11(2), p12(2)], [p11(3), p12(3)], 'r-', 'LineWidth', 1.5);
    %plot3([p12(1), p14(1)], [p12(2), p14(2)], [p12(3), p14(3)], 'g-', 'LineWidth', 1.5);
    %plot3([p14(1), p13(1)], [p14(2), p13(2)], [p14(3), p13(3)], 'g-', 'LineWidth', 1.5);
    %plot3([p13(1), p11(1)], [p13(2), p11(2)], [p13(3), p11(3)], 'r-', 'LineWidth', 1.5);
    

end

function [p11, p12, p13, p14] = findSquarePointsPerpendicularToP1P2(p1, p2, side_length)
    % Vector chỉ phương từ p1 đến p2
    direction = (p2 - p1) / norm(p2 - p1);
    
    % Tạo hai vector v1, v2 sao cho song song với mặt phẳng OXY
    if abs(direction(3)) > 0.99
        % Nếu vector chỉ phương chủ yếu dọc trục Z, ta sử dụng mặt phẳng OXY
        v1 = [1; 0; 0];
        v2 = [0; 1; 0];
    else
        % Nếu vector chỉ phương không chủ yếu dọc trục Z
        v1 = cross(direction, [0; 0; 1]);
        v1 = v1 / norm(v1) * (side_length / 2);
        v2 = cross(direction, v1);
        v2 = v2 / norm(v2) * (side_length / 2);
    end
    
    % Tính tọa độ các điểm sao cho hình vuông với tâm là p1
    p11 = p1 + v1 + v2;
    p12 = p1 + v1 - v2;
    p13 = p1 - v1 + v2;
    p14 = p1 - v1 - v2;
end
