

clc;
% clear ;

H = 0.025; % 0.2 0.1, 0.05, 0.025 

a =  0 ;
b = 10 ;
T = a:H:b;
N = length(T);

Y_exact = zeros(N,1);
Y = zeros(N,1);

f = @(t,y) 1/(1+t^2) - 2*y^2;
Y(1) = 0;

for i = 2 : N
    Y(i) = Y(i-1) + H*feval(f, T(i-1), Y(i-1));
end

% Exact Soln
for i = 1 : N
    Y_exact(i) = T(i)/(1+T(i)^2) ;
end

error = Y_exact - Y;
error_max = max(abs(error));

% Draw Graph & Compare solution
plot( T, Y ) ;
hold on ;
plot( T, Y_exact, 'r' ) ;
hold off ; grid minor;
legend('Approximation', 'Exact');
