function [ A, Means, Variances, pi ] = EM_estimate_gaussian(Y, Nhidden, ...
    Niter, epsilon, init)
%EM_ESTIMATE_GAUSSIAN EM algorithm for an HMM with Gaussian observations.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Useful quantities
N = size(Y,1);
T = size(Y,2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialization of the parameters

% Initial transition matrix should be stochastic (rows sum to 1)
A = init.A;

% Initial means and variances of the emission probabilities

Means = init.Means;
Variances = init.Variances;

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