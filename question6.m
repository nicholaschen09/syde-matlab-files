% Define the complex number and root degree
z = -64i;
n = 3; % Number of roots

% Compute roots
roots_z = abs(z)^(1/n) * exp(1i * (angle(z) + 2*pi*(0:(n-1))) / n);

% Add the first root to close the polygon
roots_z_closed = [roots_z, roots_z(1)];

% Plot roots on the complex plane
figure;
plot(real(roots_z_closed), imag(roots_z_closed), '-o', 'LineWidth', 1.5);
xlabel('Real Axis');
ylabel('Imaginary Axis');
title(['Roots of z^', num2str(n), ' = -64i']);
grid on;
axis equal;

% Add some margin to the axis limits
margin = 1; % Adjust this value for more/less margin
xlim([min(real(roots_z_closed)) - margin, max(real(roots_z_closed)) + margin]);
ylim([min(imag(roots_z_closed)) - margin, max(imag(roots_z_closed)) + margin]);

% Display roots
disp('Roots of z^3 = -64i:');
disp(roots_z);

