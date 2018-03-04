function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% X     := data set; each row is one data point
% idx   := centroid assignment
% K     := number of centroid
% m = 300, n = 2

for j = 1:K
    size(j) = 0;
endfor

tmp = zeros(K, n);

for i = 1:m
    for j = 1:K
        if (idx(i) == j)
            tmp(j,:) = tmp(j,:) + X(i,:);
            size(j) = size(j) + 1;
        endif
    endfor
endfor

for j = 1:K
    centroids(j,:) = tmp(j,:)/size(j);
endfor


% =========a soln online==========
%for i = 1:K
%    c_i = idx==i;                          % find corresponding centroid assignment of each point
%    n_i = sum(c_i);                        % count the total of assignment, which is the size(j) thing I did above
%    c_i_matrix = repmat(c_i,1,n);          % duplicate the coln
%    X_c_i = X .* c_i_matrix;               % only count those point that matches
%    centroids(i,:) = sum(X_c_i) ./ n_i;
%end

% =============================================================


end

