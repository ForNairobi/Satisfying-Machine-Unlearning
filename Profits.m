alpha = 41.906; %fitting parameter of accuracy
beta = 4./300;  %fitting parameter of accuracy
omega = 4;      %fitting parameter of accuracy

phi = 200;      %demand fitting parameter of customers' demand function
kappa = 1;      %price fitting parameter of customers' demand function

N = 768;        %Number of data points in the dataset
S = 12;         %Number of shards in the SISA unlearning framework

p = 0:200;      %range of price


%customers' optimal solution n^*
n = (phi - p)./kappa; 

%service provider's profit considering customers' optimal strategy
U_s = alpha.*log(omega.* exp(1) - beta.* (phi - p)./kappa)...
    + (phi - p)./kappa .*p - (N./S - 1).* (phi - p)./kappa...
    + ((1 + (phi - p)./kappa).*((phi-p)./kappa) - 2)./(2.*S);

%n = (c - p)./k;
%U_s = alpha.*log(f.* exp(1) - beta.* (c - p)./k) + (c - p)./k .*p - ...
%    (N./S - 1).* (c - p)./k + ((1 + (c - p)./k).*((c-p)./k) - 2)./(2.*S);

%plot
yyaxis left
dataline1 = plot(p, U_s, 'b--',...
    'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')
ylim([0 6000])
xlim([50 220])
ylabel('Profit ($)')
set(gca, 'yColor', 'b')
grid on;

hold on
yyaxis right
dataline2 = plot(p, n, 'r-',...
    'LineWidth', 2);
set(gca, 'FontSize', 15, 'FontName', 'Times')
ylabel('Number of Requests')
set(gca, 'yColor', 'r')
grid on

a = [0.5 0.5];
b = [0.65 0.78];
annotation('textarrow', a, b, 'String', ...
    'Optimal Profit')

hold off

legend({'Service Provider Profits','Customers Optimal Requests'}, 'Location', 'Best')
xlabel('Price ($)')
%print('profits.jpg','-djpeg')
