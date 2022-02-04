

%% Example 5
clc;
clear;

n = 40;
t = zeros(n,1);
for i = 1 : n
    t(i) = 5*cos((2*i-1)*pi/(2*n) ) ;
end

y = 1./(1 + t.^2);
%y = exp(t);
x0 = linspace(-5, 5, 10000);

y0 = newtonpoly(t, y, x0);

figure(5);
plot(t,y,'ro');
hold on;
plot(x0, y0);
hold off;
grid minor;
legend('Original','Interpolation');