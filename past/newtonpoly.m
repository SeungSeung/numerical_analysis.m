
function y0 = newtonpoly(x, y, x0)
% x is the nodes i.e.,(x0, x1, x2, ... , xn)
% y is the f(x) i.e.,(y0, y1, y2, ... , yn)
% y0 is the evaluation of the newton polynomial at x0

m = length(x);
D = zeros(m,m);
D(:,1) = y';

for j = 2 : m
    for i = j : m
        D(i,j) = (D(i,j-1) - D(i-1,j-1)) / (x(i) - x(i-j+1)) ;
    end
end

for i = 1 : m
    a(i) = D(i,i);
end

y0 = a(m); % D_n

y0=a(i)+(x0-x(i)).*y0;

for i = m-1 : -1 : 1
    y0 = a(i) + (x0 - x(i)).*y0 ;
end
