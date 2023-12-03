x = 0:10;

p_160 = [0, 76.3932, 123.607, 152.786, 109.398, 109.398, 109.398,...
    109.398, 109.398, 109.398, 109.398];
p_180 = [0, 76.3932, 123.607, 152.786, 118.964, 118.964, 118.964,...
    118.964, 118.964, 118.964, 118.964];
p_200 = [0, 76.3932, 123.607, 152.786, 128.529, 128.529, 128.529,...
    128.569, 128.569, 128.569, 128.569];
p_220 = [0, 76.3932, 123.607, 152.786, 138.095, 138.095, 138.095,...
    138.095, 138.095, 138.095, 138.095];
p_240 = [0, 76.3932, 123.607, 152.786, 147.661, 147.661, 147.661,...
    147.661, 147.661, 147.661, 147.661];





dataline1 = plot(x, p_160, '-square' ,'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

hold on
dataline2 = plot(x, p_180, '-', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline3 = plot(x, p_200, '--', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline4 = plot(x, p_220, '-o', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline5 = plot(x, p_240, '-^', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

grid on


xlabel('Iteration')
ylabel('Price ($)')

legend({'\phi=160', '\phi=180','\phi=200', '\phi=220', '\phi=240'}, 'location', 'best');

print('demand1_p.jpg', '-djpeg')
