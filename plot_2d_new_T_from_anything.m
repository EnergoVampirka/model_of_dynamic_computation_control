function [  ] = plot_2d_new_T_from_anything( M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N, t_restart )
[xy_data, x_label_name, y_label_name] = data_for_plot2d_T_new_from_anything( M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N, t_restart );
plot(xy_data(1, :), xy_data(2, :))
xlabel(x_label_name)
ylabel(y_label_name)
grid
end

