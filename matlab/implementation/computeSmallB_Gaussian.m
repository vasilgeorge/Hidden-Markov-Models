function [ b ] = computeSmallB_Gaussian(Y, Means, Variances, Nhidden, T)
%COMPUTESMALLB_GAUSSIAN Compute the probabilities for the data points Y for
% a Gaussian observation model with parameters Means and Variances.
%         
%         Input parameters:
%             - Y: the data
%             - Means: vector of the current estimates of the means
%             - Variances: vector of the current estimates of the variances
%             - Nhidden: number of hidden states
%             - T: length of the sequence
%         Output:
%             - b: vector of observation probabilities
% 
% Vectorized computation of the probabilities can be several times times as 
% fast as a for loop!

end