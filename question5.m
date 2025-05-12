% Define the complex number
z = -64i;
n = 3; % Number of roots

% Compute roots
roots_z = z^(1/n) * exp(2i * pi * (0:(n-1)) / n);

% Plot roots on the complex plane
figure;
plot(real(roots_z), imag(roots_z), 'o');
xlabel('Real');
ylabel('Imaginary');
title('Roots of z^3 = -64i');
grid on;
