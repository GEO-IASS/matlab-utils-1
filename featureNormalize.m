function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

    mu = mean(X);
    sigma = std(X);
    X_norm = bsxfun (@rdivide, bsxfun (@minus, X, mu), sigma);
end


function [XNorm, mu, stddev] = featureNormalize(X)
% This function provides feature normalization by taking in the input X and
% calculating the normalized inputs along with the mean and standard
% deviation for each feature.
% X = (m x d) dimensions
% mean = (1 x d) 
% stddev = (1 x d)

% Declare variables
XNorm = X;
mu = zeros(1, size(X, 2));
stddev = zeros(1, size(X, 2));

% Calculates mean and std dev for each feature
for i=1:size(mu,2)
    mu(1,i) = mean(X(:,i)); 
    stddev(1,i) = std(X(:,i));
    XNorm(:,i) = (X(:,i)-mu(1,i))/stddev(1,i);
end


function [X] = normalize(X)
% use L2 to normalize
% X = (m x d) dimensions
for i=1:size(X,1)
    if(norm(X(i,:))==0)
        
    else
        X(i,:) = X(i,:)./norm(X(i,:));
    end
end
