%% LD3 Mantas Kvedaravicius, EAf-25, 2026.10.02

%% 1 uzd trimatis grafiku vaizdavimas

figure(1)
theta = linspace(0, 2*pi, 100);
r = linspace(0, 1, 100);
[Theta, R] = meshgrid(theta, r);

X = R .* cos(Theta);
Y = R .* sin(Theta);

Z = 1 - 2.*X.^2 - 3.*Y.^2;

surf(X, Y, Z);

surf(X, Y, Z);
colormap default;
shading flat;
view(45, 30);
axis tight;
grid on;
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = 1 - 2x^2 - 3y^2');

%% b) dalis

x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);
[X2, Y2] = meshgrid(x, y);

S  = abs(X2 + Y2);
Z2 = sin(S/20) .* exp(-S);

figure(2)

surf(X2, Y2, Z2);
colormap default;
shading interp;
view(60, 30);
axis tight;
grid on;
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = sin(|x+y|/20)e^{-|x+y|}');

%% papildoma uzd 

x3 = linspace(-2, 2, 100);
y3 = linspace(-2, 2, 100);
[X3, Y3] = meshgrid(x3, y3);

Z3 = 1 - (X3.^2 + Y3.^2);

figure(3)

subplot(1,3,1)

surf(X3, Y3, Z3);
colormap(gca, 'parula');
view(45, 30);
axis tight;
grid on;
xlabel('x');
ylabel('y');
zlabel('z(x,y)');
title('f(x,y) = 1 - (X.^2 + Y.^2)');

subplot(1,3,2)

surf(X3, Y3, Z3);
colormap(gca, 'jet');
view(45, 30);
axis tight;
grid on;
xlabel('x');
ylabel('y');
zlabel('z(x,y)');
title('f(x,y) = 1 - (X.^2 + Y.^2)');

subplot(1,3,3)

surf(X3, Y3, Z3);
colormap(gca, 'copper');
view(45, 30);
axis tight;
grid on;
xlabel('x');
ylabel('y');
zlabel('z(x,y)');
title('f(x,y) = 1 - (X.^2 + Y.^2)');

