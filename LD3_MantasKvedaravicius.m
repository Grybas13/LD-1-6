% LD3 Mantas Kvedaravicius, EAf-25, 2026.09.25

%% 1 uzd dvimatis grafiku vaizdavimas
% a)

x1 = 0 : 0.5 : 2*pi;
f1 = sin(x1) + cos(x1).^2;
figure(1);
plot(x1, f1, '-o', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'y');
grid on;
axis([min(x1) max(x1) min(f1) max(f1)]);

xlabel('x ašis');
ylabel('y ašis');
title('Funkcijos f(x) = sin(x) + cos^2(x) grafikas');
legend('f(x) = sin(x) + cos^2(x)', 'Location', 'northeast');

% b) 

x = 0:0.01:2;         

f1 = x.^exp(1);
f2 = x.^(2*exp(1));
f3 = x.^(3*exp(1));
figure(2)               
plot(x, f1, 'b-')
hold on
plot(x, f2, 'r--')
plot(x, f3, 'g-.')

hold off


axis([min(x) max(x) min([f1 f2 f3]) max([f1 f2 f3])])

title('Funkciju x^e, x^{2e}, x^{3e} grafikai')
xlabel('x ašis');
ylabel('y ašis');

legend('f(x) = x^{e}', 'f(x) = x^{2e}', 'f(x) = x^{3e}', 'Location', 'northwest')

grid on

%% 2 uzd spec. grafiku kurimas

x3 = -2*pi : 0.5 : 2*pi;
y3 = x3.^3 + sin(x3); 
figure(3)

bar(y3)

title('Funkcijos x3^3 + sin(x3) diagrama')
xlabel('x ašis')
ylabel('y ašis')

figure(4)
quiver(x3, zeros(size(x3)), zeros(size(x3)), y3);
title('Funkcijos x3^3 + sin(x3) diagrama')
xlabel('x ašis')
ylabel('y ašis')


%% Papildoma uzd

% 3 uzd is 2LD

t = 0 : 0.001 : 1.2;
A = 5; f = 4; o = 2; U_1 = 3; U_2 = 1.5;
s = A * cos(2*pi*f*t);
n = o * randn(size(t));

signalas = s + n;

virsija_U_1 = signalas(signalas > U_1);

filtruotas_signalas = signalas;
filtruotas_signalas(abs(filtruotas_signalas) < U_2) = 0;

dydis = size(signalas);

atrinktu_dydis = size(virsija_U_1);

max_itampa = max(filtruotas_signalas);
min_itampa = min(filtruotas_signalas);

[min_v, min_idx] = min(virsija_U_1);
[max_v, max_idx] = max(virsija_U_1);


figure(5)

subplot(2,1,1)

t_virsija   = t(signalas > U_1);

plot(t, signalas, '-.b', 'LineWidth', 1)
hold on
plot(t, filtruotas_signalas, '-k', 'LineWidth', 1)
yline(U_1, 'y', 'LineWidth', 1.5)   
yline(U_2, 'm', 'LineWidth', 1)                                    
hold off

grid on
xlim([min(t) max(t)])
ylim([min(signalas)-1 max(signalas)+1])

title('Pradinis ir filtruotas signalai', 'Color', [0.5 0 0.5], 'FontSize', 12)
xlabel('Laikas, s')
ylabel('Itampa, V')
legend('Pradinis signalas', 'Filtruotas signalas', 'U_1 riba', 'U_2 riba', ...
    'Location', 'northoutside', 'Orientation', 'horizontal')

subplot(2,1,2)
stem(t_virsija, virsija_U_1, 'b', 'filled', 'MarkerSize', 3)
hold on
plot(t_virsija(min_idx), min_v, 'ko', 'MarkerSize', 8, 'MarkerFaceColor', 'k')
plot(t_virsija(max_idx), max_v, 'rs', 'MarkerSize', 8, 'MarkerFaceColor', 'r') 
hold off

grid on
xlim([min(t_virsija) max(t_virsija)])
ylim([U_1-0.5 max(virsija_U_1)+0.5])

title('Pradinio signalo reiksmes, virsijancias U_1 riba', 'Color', [0.5 0 0.5], 'FontSize', 12)
xlabel('Laikas, s')
ylabel('Itampa, V')
legend('Signalo reiksmes > U_1', 'Minimali reiksme', 'Maksimali reiksme', ...
    'Location', 'northoutside', 'Orientation', 'horizontal')