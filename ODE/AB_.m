

clc;
clear ;

H = 0.05; % 0.2 0.1, 0.05, 0.025

a =  0 ;
b = 10 ;
T = a:H:b;
N = length(T);

Y_exact = zeros(N,1);
Y = zeros(N,1);

f = @(t,y) -y + 2*cos(t);
Y(1) = 1;

ZZ = Y(1) + H*feval(f, T(1), Y(1)); %forward euler method
Y(2) = Y(1) + H/2*( feval(f, T(1), Y(1)) + feval(f, T(2), ZZ) );%huen's method

for i = 3 : N
    Y(i) = Y(i-1) + H/2*( 3*feval(f, T(i-1), Y(i-1) ) - feval(f, T(i-2), Y(i-2)) );
end

for i = 1 : N
    Y_exact(i) = sin(T(i)) + cos(T(i));
end

error = Y_exact - Y;
error_max = max(abs(error));

plot(T,Y,'r');
hold on;
plot(T,Y_exact,'b');
hold off;

legend('approximation', 'solution');