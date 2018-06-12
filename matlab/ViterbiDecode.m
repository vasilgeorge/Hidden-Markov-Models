function [ S ] = ViterbiDecode( Y, Nhidden, type, init )
%VITERBIDECODE Perform Viterbi decoding on the smoothed data

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Useful quantities
N = size(Y,1);
T = size(Y,2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EM and setting the way to compute the vector b according to the type

if strcmp(type, 'gauss')
    [A, Mu, Sigma, Pi] = EM_estimate_gaussian(Y, Nhidden, 100, 1e-6, init);
    SmallB = @(X) computeSmallB_Gaussian(X, Mu, Sigma, Nhidden, length(X));
elseif strcmp(type, 'multinomial')
    [A, B, Pi] = EM_estimate_discrete(Y, Nhidden, 100, 1e-6, init);
    SmallB = @(X) computeSmallB_Discrete(X, B);
else
    error 'Invalid type: must be either gauss or multinomial'
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Viterbi algorithm


end