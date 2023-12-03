n = [200, 123.6068, 76.393, 47.214, 71.471, 71.471, 71.471,...
    71.471, 71.471, 71.471, 71.471];

p = [0, 76.3932, 123.607, 152.786, 128.529, 128.529, 128.529,...
    128.569, 128.569, 128.569, 128.569];

x = 0:10;

yyaxis left
dataline1 = plot(x, p, 'r--', ...
    'LineWidth', 2);
grid on
set(gca, 'FontSize', 15, 'FontName', 'Times')
ylabel('Price ($)')
set(gca, 'yColor', 'r')
%ylim([20 26])


yyaxis right
dataline2 =  plot(x, n, 'b-', ...
    'LineWidth', 2);
grid on
set(gca, 'FontSize', 15, 'FontName', 'Times')
ylabel('number')
set(gca, 'yColor', 'b')


xlabel('Iteration')

legend({'Price of each request (left)', 'Number of requests (right) '}, 'Location', 'Best')

print('convergence.jpg', '-djpeg')