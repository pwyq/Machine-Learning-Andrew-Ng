function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
grad = sum((X*theta .- y).^2);

J = 1/(2*m)*grad + lambda/(2*m)*sum((theta(2:end)).^2);


% use repmat to duplicate the `hypothesis-y` term based on # of col of X
% eg, if X has 3 cols, then we have 3 exact same col of the the `hypo-y` term,
%     and use each col of the `hypo-y` to col-wise times each col of X 
temp = repmat(X*theta-y,1,size(X,2)).*X;
reg = (lambda/m)*theta;
reg(1) = 0;
grad = (1/m)*sum(temp,1)' + reg;

% =========================================================================

grad = grad(:);

end
