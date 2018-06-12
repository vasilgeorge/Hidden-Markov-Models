function [ alpha, logp, Z ] = ForwardFiltering( A, b, pi, N, T )
%FORWARDFILTERING Filtering using the forward algorithm
%   Section 17.4.2 of K. Murphy's book
% Input:
%   - A: estimated transition matrix
%   - b: estimated observation probabilities (local evidence vector)
%   - pi: initial state distribution pi(j) = p(z_1 = j)
% Output:
%   - Filtered belief state at time t: alpha = p(z_t|x_1:t)
%   - log p(x_1:T)
%   - Z: normalization constant


end

