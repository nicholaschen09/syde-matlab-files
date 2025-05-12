syms x y
h = fimplicit(x^2 - y^2/4 == 1, 'LineWidth', 1.5);
hold on
X = h.XData; % Extract x-coordinates
Y = h.YData; % Extract y-coordinates
plot(X, Y, 'b') % Plot the original hyperbola in blue
theta = pi/6; % Example angle (30 degrees)
R = [cos(theta), -sin(theta); sin(theta), cos(theta)];
D = [X; Y]; % Data matrix
D_rot = R * D; % Apply rotation
X_rot = D_rot(1, :);
Y_rot = D_rot(2, :);
plot(X_rot, Y_rot, 'r') % Plot rotated hyperbola in red
legend('Original Hyperbola', 'Rotated Hyperbola')
hold off
a = 1; % Semi-major axis
b = 2; % Semi-minor axis
c = sqrt(a^2 + b^2); % Focal distance
foci_original = [c, 0; -c, 0];
disp('Foci of the original hyperbola:');
disp(foci_original);
foci_rotated = (R * foci_original')'; % Rotate and transpose back for row format
disp('Foci of the rotated hyperbola:');
disp(foci_rotated);

