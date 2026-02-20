% Assuming your matrix is called `data` with size Nx9
% First column = x-axis (e.g., Wavelength or Time)
% Columns 2-9 = y-axis data for 8 different temperatures

x = data_time_trace(:,1);          % X-axis data
y = data_time_trace(:,2:9);        % Y-axis data (8 curves)

% Create a new figure
figure;
hold on;

% Define temperature labels for legend (edit if needed)
temp_labels = { '44.0°C', '35.7°C', '28.4°C', '21.4°C', '19.4°C', '16.9°C', '12.0°C','8.9°C'};

% Plot all 8 curves
for i = 1:8
    plot(x, y(:,i), 'LineWidth', 2);
end

% Add legend
legend(temp_labels, 'FontSize', 12);

% Add labels and title
ylabel('Intensity (V)', 'FontSize', 14);   % Change to actual x label
xlabel('Time (\mus)', 'FontSize', 14);   % Change to actual y label
%title('Multi-Temperature Plot', 'FontSize', 14);

% Set axis limits (customize as needed)
xlim([min(x), max(x)]);
ylim([0,1.2]);
box on;
grid on;
set(gca, 'FontSize', 16);