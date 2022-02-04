

%% Example 4
clc;
clear;

x = -5:1:5 ;
y = 1./(1 + x.^2);
x0 = linspace(-5, 5, 10000);

y0 = newtonpoly(x, y, x0);
figure(4);
plot(x,y,'r*');
hold on;
plot(x0, y0);
% axis([-5 5 0 0.9])