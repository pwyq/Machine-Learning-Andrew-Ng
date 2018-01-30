function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

x = X * theta;  % x is a m-by-1 vector
hypothesis = sigmoid(x);  % hypothesis is a m-by-1 vector

% To caculate GD, two ways
% 1. compute GD with regularization, then redo grad_0 without regularization,
% 2. compute GD with original way, then regularize all terms except grad_0.

% Method #1
grad = (1/m) * sum(X .* repmat((hypothesis - y), 1, size(X,2))) + (lambda/m)*theta';
grad(1) = ((1/m) * sum(X .* repmat((hypothesis - y), 1, size(X,2))))(1);

J = (1/m) * sum(-y'*log(hypothesis) - (1 .- y)'*log(1 .- hypothesis)) + ...
    (lambda/(2*m))*sum(theta(2:length(theta)).^2);

% Method #2
%grad = (1 / m) * sum( X .* repmat((sigmoid(X*theta) - y), 1, size(X,2)) );
%
%grad(:,2:length(grad)) = grad(:,2:length(grad)) + (lambda/m)*theta(2:length(theta))';


% Here, I believe method#2 above is more efficient than method#1 above.
# No, in general, approach 2 is efficient than approach 1
% =============================================================

end
