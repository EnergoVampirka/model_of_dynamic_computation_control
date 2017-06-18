function [ ret, x_label_name, y_label_name ] = data_for_plot2d_T_new_from_anything( M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N_arr, t_restart )
all_args = {M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N_arr, t_restart};
args_name = {'M', '\Delta x', '\Delta y', 't_{exe}', 'N_{x}', 'N_{y}', 'X', 'Y', 'q', 'N', 't_{restart}'};
vectorized_arg_index = find(cellfun('length', all_args) > 1);
vectorized_arg_value = cell2mat(all_args(vectorized_arg_index));

ret = [];
x_label_name = args_name(vectorized_arg_index);
y_label_name = 'T';

for i = vectorized_arg_value
    temp_args = all_args;
    temp_args(vectorized_arg_index) = num2cell(i);
    ret = cat(2, ret, [i; single_T_new_computation(temp_args{:})]);
end
end

