% Define matrices A, B, and M (from question 4)
A = [2, 1; 1, 2]; % Replace with your specific matrix from question 4
B = [3, 0; 0, 3]; % Replace with your specific matrix from question 4
M = [1, 2; 3, 4]; % Replace with your specific matrix from question 4

%% Part (a): Eigenvalues and Eigenvectors
% Eigenvalues and eigenvectors of A
[V_A, D_A] = eig(A); % V_A: eigenvectors, D_A: diagonal matrix of eigenvalues
disp('Eigenvalues of A:');
disp(diag(D_A));
disp('Eigenvectors of A:');
disp(V_A);

% Eigenvalues and eigenvectors of B
[V_B, D_B] = eig(B);
disp('Eigenvalues of B:');
disp(diag(D_B));
disp('Eigenvectors of B:');
disp(V_B);

% Eigenvalues and eigenvectors of AB
AB = A * B;
[V_AB, D_AB] = eig(AB);
disp('Eigenvalues of AB:');
disp(diag(D_AB));
disp('Eigenvectors of AB:');
disp(V_AB);

% Test on non-diagonalizable matrix N
N = [5, 1; 0, 5];
[V_N, D_N] = eig(N);
disp('Eigenvalues of N:');
disp(diag(D_N));
disp('Eigenvectors of N:');
disp(V_N);
% Analyze the eigenvectors of N (they are linearly dependent)

%% Part (b): Singular Value Decomposition (SVD)
% SVD of M
[U, S, V] = svd(M);

% Display results
disp('Matrix U (left singular vectors):');
disp(U);
disp('Singular values (diagonal of S):');
disp(diag(S));
disp('Matrix V (right singular vectors):');
disp(V);

% Verify SVD: M = U*S*V'
M_reconstructed = U * S * V';
disp('Reconstructed Matrix M (should match original M):');
disp(M_reconstructed);
