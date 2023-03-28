function g = sigmoid(z)

%   g = SIGMOID(z) computes the sigmoid of z.

g = zeros(size(z));

oneMatrix = ones(size(z));
eMatrix = oneMatrix * e;

g = oneMatrix./(oneMatrix + eMatrix.^-z);

end
