function [  ] = plot_2d_new_T_steps_from_N( M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N, t_restart )
[~, T_steps] = single_T_new_computation( M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N, t_restart );

plot(1:N, T_steps)
xlabel('N')
ylabel('T')
grid
end
