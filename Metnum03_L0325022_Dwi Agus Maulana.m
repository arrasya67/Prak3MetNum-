pkg load symbolic;
disp('1. FOR LOOP ');
disp(' For kondisi 1: i = 1:4 ');
for i = 1:4
    p = i^2
end

disp('--- For kondisi 2: j = 1:0.5:4 ---');
for j = 1:0.5:4
    q = j/2
end
disp('2. WHILE LOOP ');
disp('While loop');
p = 1;
while (p <= 5)
    q = p^2 + p
    p = p + 1;
end
disp('Continue (skip i == 3)');
for i = 1:4
    if (i == 3)
        continue
    end
    p = i^2
end
disp(' Break (stop di i == 3) ');
for i = 1:4
    if (i == 3)
        break
    end
    p = i^2
end
disp('3. DIFFERENSIAL ');
syms x
f_asli = x^2 + 5*x + 7;
f_turunan = diff(f_asli, x);
disp('Turunan dari f(x) = x^2 + 5x + 7:');
disp(f_turunan);
disp('4. INTEGRAL ');
syms x
f_asli = sin(3*x) - 2*x^3;
f_integral = int(f_asli, x);
disp('Integral dari f(x) = sin(3x) - 2x^3:');
disp(f_integral);
disp('5. GRAFIK 2D - Contoh 1');
figure(1);
x = 1:25:100;
y = x.^3 + 2*x.^2 - 40*x;
plot(x,y);
title('Grafik y = x^3 + 2x^2 - 40x (step 25)');
xlabel('x'); ylabel('y');
grid on;
disp('6. GRAFIK 2D - Contoh 2');
figure(2);
x = 0:1:100;
y = x.^3 + 2*x.^2 - 40*x;
plot(x,y);
title('Grafik y = x^3 + 2x^2 - 40x (step 1)');
xlabel('x'); ylabel('y');
grid on;
disp('7. GRAFIK 2D - Contoh 3 ');
figure(3);
x = linspace(0,20);
y = exp(-x/4).*sin(x);
plot(x,y);
xlabel('Sumbu X');
ylabel('Sumbu Y');
title('Grafik persamaan f(x)=exp(-x/4).*sin(x)');
grid on;
disp(' 8. GRAFIK 2D - Contoh 4 ');
figure(4);
x = 0:0.01:2*pi;
y = -10*sin(2*x) - 8*cos(3*x);
z = 8*sin(6*x) .* (-6) .* cos(10*x);
plot(x,y,x,z);
title('Dua kurva dalam satu grafik');
xlabel('x'); ylabel('y');
grid on;
legend('y = -10sin(2x) - 8cos(3x)', 'z = 8sin(6x).*-6cos(10x)');
disp(' 9. GRAFIK 3D - LINE PLOT ');
figure(5);
t = 0:0.1:6*pi;
x = sqrt(t).*sin(2*t);
y = sqrt(t).*cos(2*t);
z = 0.5*t;
plot3(x,y,z,'k','linewidth',1);
grid on;
xlabel('x'); ylabel('y'); zlabel('z');
title('Grafik 3D - Line Plot (spiral)');
disp('10. GRAFIK 3D - MESH PLOT ');
figure(6);
x = -7.3:0.5:7.5;
y = x;
[X,Y] = meshgrid(x,y);
R = sqrt(X.^2 + Y.^2);
Z = sin(R)./R;
mesh(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z');
title('Mesh plot f(x,y) = sin(sqrt(x^2+y^2)) / sqrt(x^2+y^2)');
disp(' 11. GRAFIK 3D - CONTOUR PLOT ');
figure(7);
x = -3:0.25:3;
y = -3:0.25:3;
[X,Y] = meshgrid(x,y);
Z = 1.8.^(-1.5*sqrt(X.^2 + Y.^2)).*cos(0.5*Y).*sin(X);
contour3(X,Y,Z,15);
xlabel('x'); ylabel('y'); zlabel('z');
title('Contour plot 3D');
disp('12. MESHGRID ');
figure(8);
x = -3:1:3;
y = -3:1:3;
[X,Y] = meshgrid(x,y);
plot(X,Y,'o','MarkerFaceColor','b','MarkerSize',6);
title('Visualisasi Peta Dasar dari [X,Y] = meshgrid(x,y)');
xlabel('Sumbu X'); ylabel('Sumbu Y');
grid on;
axis equal;



