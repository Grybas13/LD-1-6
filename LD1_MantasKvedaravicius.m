% Mantas Kvedaravičius EAf-25 2026.09.15

clear

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |   F_2 [-x-] ')

%% 

clear

help sin
help plot 
help title

doc sin
doc plot
doc title

%% 

% Funkcija LINSPACE:
% PASKIRTIS: sugeneruoja vektorių su tolygiai 
% pasiskirsčiusiais elementais tarp dviejų reikšmių.
% SINTAKSĖ:
% y = linspace(x1, x2) arba y = linspace(x1, x2, n)

% PAVYZDŽIAI:
% y1 = linspace(0, 10);        % 100 taškų nuo 0 iki 10
% y2 = linspace(0, 10, 5);     % 5 taškai: 0 2.5 5 7.5 10
% y3 = linspace(5, 5, 3);      % [5 5 5], nes x1=x2


% Funkcija SIZE:
% PASKIRTIS: grąžina masyvo (matricos, vektoriaus) matmenis.
% SINTAKSĖ: 
% sz = size(A);
% szdim = size(A, dim); 
% ĮVESTIES ARGUMENTAI:
%   A - bet koks masyvas
%   DIM – sveikasis skaičius, nurodantis,
%   KURĮ matmenį tikrinti( 1 - eilučių skaičius, 2 - stulpelių skaičius,
%   3 - trečia dimensija
% PAVYZDŽIAI:
% sz = size(A);          % sz = [3 4]
% szdim1 = size(A, 1);   % szdim1 = 3  (eilučių skaičius)


% Funkcija MAX: 
% PASKIRTIS: randa didžiausią reikšmę masyve arba
% tarp dviejų masyvų/reikšmių.
% SINTAKSĖ:
%   M = max(A); 
%   M = max(A, [], dim)
%       - 3 įvesties argumentai (antrasis - tuščias [] privalomas)
%       - dim nurodo, pagal kurį matavimą ieškoti maksimumo
%         (1 - stulpeliuose, 2 - eilutėse)
% PAVYZDYS:
% B = [3 7 2; 9 1 5];
% m1 = max(B);                 % [9 7 5] - max kiekviename stulpelyje
% m2 = max(B, [], 2);          % [7; 9]  - max kiekvienoje eilutėje


%% 

N = 4;

v = N+1 : 0.5 : N+4;

A = reshape(N:(N+8), 3,3)'; % matrica transponuojama
A_a = A(3, 2);

A_b = A(2:3, 1:2);

A_c = A([1 3], [1 3]);


A_v = [A; v(1:3)];

disp(A_v)