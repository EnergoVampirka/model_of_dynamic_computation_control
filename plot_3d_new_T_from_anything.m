function [ ] = plot_3d_new_T_from_anything( M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N, t_restart )
[x_data, y_data, z_data, x_label_name, y_label_name, z_label_name] = data_for_plot3d_T_new_from_anything( M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N, t_restart );
surf(x_data, y_data, z_data) % surf
xlabel(x_label_name)
ylabel(y_label_name)
zlabel(z_label_name)
% grid
end

% NOTE: you may change any two input parameter; set them as array and function
%       plot 3d graphic and add proper label to axis
% plot_3d_new_T_from_anything( 2, 2, 2, 4, 1, 1, 1, 1, 1, [2,3,5, 7, 9, 12], 1:100 )