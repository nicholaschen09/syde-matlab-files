% Set random generator number seed to 13 (our group number)
seed = 13; 
rng(seed);

% Generate two random 4x4 matrices
A = round(10 * rand(4));
B = round(10 * rand(4));

% Compute the required matrices
C = (A * B)';           % Transpose of AB
D = (A') * (B');        % Product of the transposes
E = (B') * (A');        % Reverse order product of transposes
F = (B * A)';           % Transpose of BA

% Display the matrices
disp('Matrix C = (AB)^T:');
disp(C);

disp('Matrix D = (A^T)(B^T):');
disp(D);

disp('Matrix E = (B^T)(A^T):');
disp(E);

disp('Matrix F = (BA)^T:');
disp(F);

% Compare the matrices
disp('Comparison of Matrices:');
disp('Are C and D equal?');
disp(isequal(C, D));

disp('Are C and E equal?');
disp(isequal(C, E));

disp('Are C and F equal?');
disp(isequal(C, F));

disp('Are D and E equal?');
disp(isequal(D, E));

disp('Are D and F equal?');
disp(isequal(D, F));

disp('Are E and F equal?');
disp(isequal(E, F));

% From the results, the general rule for the transpose of a matrix product
% is (AB)^T = B^TA^T