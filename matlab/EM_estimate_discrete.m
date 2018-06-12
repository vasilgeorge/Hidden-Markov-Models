function [ A, B, pi ] = EM_estimate_discrete(Y, Nhidden, Niter, ...
    epsilon)
%EM_ESTIMATE_DISCRETE EM algorithm for an HMM with discrete observations.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Useful quantities
N = size(Y,1);
T = size(Y,2);

% In the maximization step for B you will have to compute a quantity 
% involving indicators on the values of Y. One efficient way to do it is to
% pre-compute a representation of Y using one-hot encoding. In MATLAB:

% % X sparse coding
% Nv = length(unique(Y));
% X = zeros(T, Nv);
% for i=1:T
%     X(i, Y(i)) = 1;
% end
% % Maximization: emission matrix
% B1 = B1 + gamma * X;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialization of the parameters

% Initial transition matrix must be stochastic (rows sum to 1)
A = init.A;

% Observation matrix B
B = init.B;

% Class prior
pi = init.pi;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EM algorithm
i=0;
% Initialize convergence criterion here

while i<Niter % && condition on criterion and precision epsilon
    % Iterate here
end

end
