% Assuming your matrix is called `data` with size Nx9
% First column = x-axis (e.g., Wavelength or Time)
% Columns 2-9 = y-axis data for 8 different temperatures

x = dataVsDis(:,1);          % X-axis data
y = dataVsDis(:,2:end);        % Y-axis data (8 curves)

% Create a new figure
figure;
hold on;

% Define temperature labels for legend (edit if needed)
temp_labels = { '12.6°C', '20.1°C'};

% Plot all 8 curves

plot( y(:,1), x,  'b','LineWidth', 2);
hold on
plot( y(:,2), x,'r', 'LineWidth', 2);

% Add legend
legend(temp_labels, 'FontSize', 12);

% Add labels and title
xlabel('Intensity (V)', 'FontSize', 14);   % Change to actual x label
ylabel('Time (\mus)', 'FontSize', 14);   % Change to actual y label
%title('Multi-Temperature Plot', 'FontSize', 14);

% Set axis limits (customize as needed)
xlim([0, 1]);
ylim([0,10.5]);
box on;
grid on;
set(gca, 'FontSize', 14);