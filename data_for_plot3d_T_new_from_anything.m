function [ real_X, real_Y, ret, x_label_name, y_label_name, z_label_name ] = data_for_plot3d_T_new_from_anything( M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N, t_restart )
all_args = {M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N, t_restart};
args_name = {'M', '\Delta x', '\Delta y', 't_{exe}', 'N_{x}', 'N_{y}', 'X', 'Y', 'q', 'N', 't_{restart}'};
vectorized_args_index = find(cellfun('length', all_args) > 1);
vectorized_x_arg_value = cell2mat(all_args(vectorized_args_index(1)));
vectorized_y_arg_value = cell2mat(all_args(vectorized_args_index(end)));
[real_X, real_Y] = meshgrid(vectorized_x_arg_value, vectorized_y_arg_value);

x_label_name = args_name(vectorized_args_index(1));
y_label_name = args_name(vectorized_args_index(end));
z_label_name = 'T';

ij_iterators = size(real_X);

ret = zeros(ij_iterators);

for i = 1:ij_iterators(1)
    for j = 1:ij_iterators(end)
        temp_args = all_args;
        temp_args(vectorized_args_index(1)) = num2cell(real_X(i, j));
        temp_args(vectorized_args_index(end)) = num2cell(real_Y(i, j));
        ret(i, j) =  single_T_new_computation(temp_args{:});
    end
end
end

