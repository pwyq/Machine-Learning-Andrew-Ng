function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
% alpha = 0.01
% m = 97
% num_iters = 1500

x = X(:,2);

temp(1) = theta(1) - alpha*(1/m)*sum(theta(1) + theta(2)*x - y);
temp(2) = theta(2) - alpha*(1/m)*sum((theta(1) + theta(2)*x - y).*x);

theta(1) = temp(1);
theta(2) = temp(2);

% One advanced solution found online

%delta = (1/m)*sum(X.*repmat((X*theta - y), 1, size(X,2)));
%theta = (theta' - (alpha * delta))';

% https://www.mathworks.com/help/matlab/ref/repmat.html




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end
