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

axes('position',[.65 .45 .25 .25]);
box on

p06 = [126.398, 126.398];
p08 = [127.745, 127.745];
p10 = [128.569, 128.569];
p12 = [129.043, 129.043];
p14 = [129.406, 129.406];

sub_index = (x <= 10) & (x >= 9);

line06 = plot(x(sub_index), p06, '-square', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')
hold on
line08 = plot(x(sub_index), p08, '-', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')
line10 = plot(x(sub_index), p10, '--', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')
line12 = plot(x(sub_index), p12, '-o', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')
line14 = plot(x(sub_index), p14, '-^', 'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')
hold off

axis tight
grid on

print('demand2_p.jpg', '-djpeg')
