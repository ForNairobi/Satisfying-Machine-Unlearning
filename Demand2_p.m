x = 0:10;

p_06 = [0, 76.3932, 123.607, 152.786, 126.398, 126.398, 126.398, 126.398, ...
    126.398, 126.398, 126.398];
p_08 = [0, 76.3932, 123.607, 152.786, 127.745, 127.745, 127.745, 127.745, ...
    127.745, 127.745, 127.745];
p_10 = [0, 76.3932, 123.607, 152.786, 128.529, 128.529, 128.529, ...
    128.569, 128.569, 128.569, 128.569];
p_12 = [0, 76.3932, 123.607, 152.786, 129.043, 129.043, 129.043, ...
    129.043, 129.043, 129.043, 129.043];
p_14 = [0, 76.3932, 123.607, 152.786, 129.406, 129.406, 129.406, ...
    129.406, 129.406, 129.406, 129.406];





dataline1 = plot(x, p_06, '-square' ,'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

hold on
dataline2 = plot(x, p_08, '-', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline3 = plot(x, p_10, '--', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline4 = plot(x, p_12, '-o', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

dataline5 = plot(x, p_14, '-^', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')

grid on



xlabel('Iteration')
ylabel('Price ($)')

legend({'\kappa=0.6', '\kappa=0.8','\kappa=1.0', '\kappa=1.2', '\kappa=1.4'}, 'location', 'best');

print('demand2_p.jpg', '-djpeg')
