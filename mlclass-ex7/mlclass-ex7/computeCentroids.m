function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
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
% for every centroid
for k=1:K;
	
	% find the number of examples assigned to the current cluster
	no_of_examples_in_cluster = sum(idx == k);
	
	% accumulate examples
	examples_sum = zeros(1, n);
	
	% for every example
	for i=1:m;
		
		% if the example belongs to the current centroid
		if idx(i) == k;
			examples_sum = examples_sum + X(i, :);
		end;
		
	end;
	
	% update centroid
	centroids(k, :) = examples_sum ./ no_of_examples_in_cluster;
	
end;







% =============================================================


end

