

%% Example 1
clc;
clear;

x = [1 2 -1 3 0];
y = [1 -1 2 -1 2];
x0 = linspace(-2, 4, 100);

y0 = newtonpoly(x, y, x0);
plot(x,y,'r*');
hold on;
plot(x0,y0, 'b');
hold off;
grid minor;
title('Example 1');

