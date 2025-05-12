% Define coefficients
a = 1; b = -105; c = 1;

% Solve using provided method
if b > 0
    x1 = b + sqrt(b^2 - c);
    x2 = c / x1;
else
    x2 = b - sqrt(b^2 - c);
    x1 = c / x2;
end

disp('Roots of the quadratic equation:');
disp([x1, x2]);
