x = 0:10;

n_160 = [160, 83.6068, 36.3930, 7.2140, 50.6020, 50.6020, 50.6020,...
    50.6020, 50.6020, 50.6020, 50.6020];
n_180 = [180, 103.6068, 56.3930, 27.2140, 61.0360, 61.0360, 61.0360,...
    61.0360, 61.0360, 61.0360, 61.0360];
n_200 = [200, 123.6068, 76.393, 47.214, 71.471, 71.471, 71.471,...
    71.471, 71.471, 71.471, 71.471];
n_220 = [220, 143.6068, 96.3930, 67.2140, 81.9050, 81.9050, 81.9050,...
    81.9050, 81.9050, 81.9050, 81.9050];
n_240 = [240, 163.6068, 116.3930, 87.2140, 92.3390, 92.3390, 92.3390,...
    92.3390, 92.3390, 92.3390, 92.3390];




dataline1 = plot(x, n_160, '-square' ,'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

hold on
dataline2 = plot(x, n_180, '-', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline3 = plot(x, n_200, '--', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline4 = plot(x, n_220, '-o', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline5 = plot(x, n_240, '-^', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

grid on


xlabel('Iteration')
ylabel('Number of Requests')

legend({'\phi=160', '\phi=180','\phi=200', '\phi=220', '\phi=240'}, 'location', 'best');

print('demand1_n.jpg', '-djpeg')


