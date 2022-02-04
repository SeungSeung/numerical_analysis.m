

%% Example 2
x = -5:5 ;
y = 10*(rand(1,11)-0.5);
x0 = linspace(-5, 5, 10000);

y0 = newtonpoly(x, y, x0);

figure(2);
plot(x,y,'r*');
hold on;
plot(x0,y0);
hold off;
grid minor;
title('Example 2');