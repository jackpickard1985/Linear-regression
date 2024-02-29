# Linear-regression
Cost function and gradient descent implementation that I wrote after completing Professor Ng's machine learning course on Coursera / Stanford online (this is not actually part of the course but I created it in order to process some research data; I later realised that I could do the job better using the lm function in R)

The course walked the user through generating code for logistic regression, so here I've adapted the result to perform the similar task of linear regression

Loads data from a .xls file and returns the y intercept and x coefficients according to the required dimensions

Dependent on a gradient descent algorithm called fminunc

I have tested this against a similar function in R using data from intensive care, and happily it produced an identical result!

Note that although Github recognises the code as Matlab, it was actually written in a sister language called Octave, which is open-source, so there may be compatibility issues if used in Matlab
