% LD2 Mantas Kvedaravicius, EAf-25, 2026.09.18

%% 1 uzd masyvai

a = (-5:0.6:5)';

b = sqrt(a);

c = b(end);

d = (a .* b) / c;

%% 2 uzd dvimaciai masyva

X_mn = [2*sqrt(2), log(2); 
    2^5,       2*pi; 
    3*sqrt(2), exp(2)];

X_m2 = [2*sqrt(2); 5; 2^(-2)];

X = [X_mn, X_m2];

determinantas = det(X);


%% 3 uzduotis veiksmai su masyvais

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


%% papildoma uzduotis masyvo elementu indeksavimas

a = input("Iveskite vektoriu A = [a_1_1, a_1_2, ..., a_1_12]: ");

b = [a(10:end), a(1:9)];

disp('vektorius B yra:');
disp(b);

