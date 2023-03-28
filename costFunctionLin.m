function [J, grad] = costFunctionLin(theta, X, y, lambda)

m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));

oneVector = ones(size(y));

J = 1/(2 * m) * (X * theta - y)' * (X * theta - y) + sum(lambda/(2 * m) * theta.^2);

oneVector = ones(size(theta));

oneVector = oneVector * lambda/m;

oneVector(1, 1) = 0;

grad = 1/m * (X' * (X * theta - y)) + oneVector.*theta;

end
