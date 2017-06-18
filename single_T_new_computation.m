function [ T, T_steps ] = single_T_new_computation( M, delta_x, delta_y, t_exe, Nx, Ny, X, Y, q, N, t_restart )
  if q == 0
      
  end
  A = A_new_computation( Nx, Ny, M );
  tmp_mult_calc = @(a, b, c, n_max) a./b.^((1:n_max)')./c.^(n_max - (1:n_max)');
  tmp = tmp_mult_calc(X, Nx, q, N) .* tmp_mult_calc(Y, Ny, q, N);
  T_steps = A .* 1./delta_x./delta_y .* t_exe .* tmp
  T = sum(T_steps) + t_restart;
end

% [T, T_steps] = single_T_new_computation( 2, 2, 2, 4, 1, 1, 1, 1, 1, [2,3,5], 1 )