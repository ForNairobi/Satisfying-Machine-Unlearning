x = 0:10;

n_06 = [333.3333, 206.0113, 127.3216, 78.6900, 122.6700, 122.6700, 122.6700, 122.6700, ...
    122.6700, 122.6700, 122.6700];
n_08 = [250.0000, 154.5085, 95.4912, 59.0175, 90.3187, 90.3187, 90.3187, 90.3187, ...
    90.3187, 90.3187, 90.3187];
n_10 = [200, 123.6068, 76.393, 47.214, 71.471, 71.471, 71.471,...
    71.471, 71.471, 71.471, 71.471];
n_12 = [166.6666, 103.00566, 63.6608, 39.3450, 59.1308, 59.1308, 59.1308, ...
    59.1308, 59.1308, 59.1308, 59.1308];
n_14 = [142.8571, 88.2905, 54.5664, 33.7242, 50.4242, 50.4242, 50.4242, ...
    50.4242, 50.4242, 50.4242, 50.4242];


dataline1 = plot(x, n_06, '-square' ,'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

hold on
dataline2 = plot(x, n_08, '-', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline3 = plot(x, n_10, '--', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline4 = plot(x, n_12, '-o', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline5 = plot(x, n_14, '-^', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

grid on



xlabel('Iteration')
ylabel('Number of Requests')

legend({'\kappa=0.6', '\kappa=0.8','\kappa=1.0', '\kappa=1.2', '\kappa=1.4'}, 'location', 'best');

print('demand2_n.jpg', '-djpeg')

