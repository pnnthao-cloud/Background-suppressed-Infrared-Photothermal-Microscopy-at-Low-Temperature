% Sample input vectors (replace these with your actual data)
Temperature = data(:,1) ; % in °C
mean_ =data(:,2);  % Mean intensity in V
SD = data(:,3); % Standard deviation

% Plot data with error bars
figure;
errorbar(Temperature, mean_, SD, 'o', 'MarkerSize', 6, ...
     'MarkerFaceColor', '#D95319','MarkerEdgeColor', '#D95319', ...
    'CapSize', 5, 'LineWidth', 1.2);
hold on;

% Linear fit: mean_ = A*Temperature + B
coeffs = polyfit(Temperature, mean_, 1);
A = coeffs(1);
B = coeffs(2);
fitted_mean = polyval(coeffs, Temperature);

% Plot fitted line
plot(Temperature, fitted_mean, 'k--', 'LineWidth', 2);
legend('Data with SD', 'Linear Fit', 'Location', 'best','FontSize', 12);
% Compute R-squared
residuals = mean_ - fitted_mean;
SS_res = sum(residuals.^2);
SS_tot = sum((mean_ - mean(mean_)).^2);
R2 = 1 - (SS_res / SS_tot);

% % Add text with equation and R²
% eq_text = sprintf('y = %.3f x + %.3f\nR^2 = %.3f', A, B, R2);
% text(0.05 + min(Temperature), max(mean_), eq_text, ...
%     'FontSize', 12, 'BackgroundColor', 'w');

% Axis labels
xlabel('Temperature (^oC)', 'FontSize', 14);
ylabel('Mean Intensity (V)', 'FontSize', 14);
title('Linear Fit: Temperature vs Mean Intensity', 'FontSize', 14);
grid on;
axis tight;
xlim([5 45]);
ylim([0.1 1.2]);