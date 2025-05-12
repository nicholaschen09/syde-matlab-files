% Set the seed number to 13
rng(13); 

% (a) Generate a random 2x2 matrix
A = randi([-10, 10], [2, 2]);
disp('Generated Matrix A:');
disp(A);

% (b) Compute the determinant of A
determinant = det(A);
disp('Determinant of A:');
disp(determinant);

% (c) Check rank by MATLAB
rank_A = rank(A);
disp('Rank of A:');
disp(rank_A);
