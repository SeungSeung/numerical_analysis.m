

clc;
% clear ;

H = 0.2; % 0.2 0.1, 0.05, 0.025 

a =  0 ;
b = 10 ;
T = a:H:b;
N = length(T);

Y_exact = zeros(N,1);
Y = zeros(N,1);

f = @(t,y) -y;
Y(1) = 1;

for i = 2 : N
    Y(i) = Y(i-1) + H*feval(f, T(i-1), Y(i-1));
end

for i = 1 : N
    Y_exact(i) = exp(-T(i));
end

error = Y_exact - Y;
error_max = max(abs(error));

plot(T,Y,'r');
hold on;
plot(T,Y_exact,'b');
hold off;

legend('approximation', 'solution');