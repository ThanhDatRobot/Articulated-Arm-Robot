        % Vẽ quỹ đạo của điểm cuối
function plot_trajectory_end_effector(trajectory_x, trajectory_y, trajectory_z)
plot3(trajectory_x, trajectory_y, trajectory_z, 'r', 'LineWidth', 1.5);
end