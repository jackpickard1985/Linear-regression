% This file will run REGULARISED MULTIVARIATE LINEAR REGRESSION and print theta values
% It requires your X and y values to be sorted in an excel type spreadsheet
% Xs must be listed together in columns, y must be a column vector
% X and y must be of equal height

% INSTRUCTIONS: Enter locations of X and y and edit the filename and relevant sheet for the spreadsheet.
% Also enter lambda constant.
% Then run from octave
% You must have the io package installed and running in Octave in order to read .xls / .xlsx files
% (use 'pkg load io' to load the io package  into octave if already installed)


% Load X based on the location descriptors in the spreadsheet

top_left_X = 'U11' %edit location as needed

bottom_right_X = 'AA82' %edit location as needed

top_y = 'N11' %edit location as needed

bottom_y = 'N82' %edit location as needed

lambda = 0 %set regularisation constant

X = xlsread('surf_regress4.xlsx', 'Analysis', [top_left_X ':' bottom_right_X]) %edit filename and sheet

y = xlsread('surf_regress4.xlsx', 'Analysis', [top_y ':' bottom_y]) %edit filename and sheet

%  Setup the data matrix appropriately, and add ones for the intercept term
[m, n] = size(X);

% Add intercept term to x and X_test
X = [ones(m, 1) X];

% Initialize fitting parameters
initial_theta = zeros(n + 1, 1);

%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost 
[theta, cost] = ...
	fminunc(@(t)(costFunctionLin(t, X, y, lambda)), initial_theta, options)

	
	
	
	
	