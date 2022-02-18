clc;
clear ;

H = 0.2; % 0.2 0.1, 0.05, 0.025 
e_tol = 1e-10;

a =  0 ;
b = 10 ;
T = a:H:b;
N = length(T);

Y_exact = zeros(N,1);
Y_app = zeros(N,1);

lam = -5;
f = @(t,y) lam*y + (1-lam)*cos(t) - (1+lam)*sin(t);
% f = @(t,y) t*exp(-t) - y;
Y_app(1) = 1;

for i = 2 : N
    z0 = Y_app(i-1);
    
    diff = 1;
    while diff > e_tol
        z1 = z0 - (z0 - Y_app(i-1) - H*feval(f, T(i), z0))  / (1-H*lam);
        diff = abs( z1 - z0 ) ;
        z0 = z1 ;
    end
    
    Y_app(i) = Y_app(i-1) + H*(feval(f, T(i), z0) );
end


% Exact Soln
for i = 1 : N
    Y_exact(i) = sin(T(i)) + cos(T(i)) ;
end

% Error Check
for i = 1 : N
    error(i) = abs(Y_exact(i) - Y_app(i));
end
max_err_02 = max(error) ;

% Draw Graph & Compare solution
plot( T, Y_app,'k' ) ;
hold on ;
plot( T, Y_exact, 'r-.' ) ;
hold off ; grid minor;
legend('Approximation', 'Exact');

clear a b i N H diff z0 z1 lam f e_tol