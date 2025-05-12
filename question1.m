% Plot the given parabola x^2 - y = 16
ezplot('x^2 - y = 16', [-10, 10, -20, 20]); % Set range for better visualization
hold on; % Hold the current plot

% Plot a parabola with a larger c value (e.g., x^2 - y = 25)
ezplot('x^2 - y = 25', [-10, 10, -20, 20]);

% Plot a parabola with a smaller c value (e.g., x^2 - y = 9)
ezplot('x^2 - y = 9', [-10, 10, -20, 20]);

% Add labels and title for clarity
xlabel('x');
ylabel('y');
title('Parabolas with different c values');
legend('x^2 - y = 16', 'x^2 - y = 25', 'x^2 - y = 9');
hold off; % Release the plot
