

function [x_new, err, count] = jacobi_system_solver(A,b,x_exact, e_tol)

% A = [9 1 1; 2 10 3; 3 4 11];
% b = [10 19 0]; b = b';
% x_exact = [1; 2; -1];
% e_tol = 10^(-16) ;

x_new = zeros(size(b,1), size(b,2)) ;

iter_N = 100;
count = 0;
for i = 1 : iter_N
    for j = 1 : size(x_new,1)
        x_new(j,i+1) = (b(j) - sum(A(j,:)*x_new(:,i)) + A(j,j)*x_new(j,i) )/A(j,j) ;
        % i�� ����Ƚ���� ���� �ε����ε� i��° �ε����� �̿��� i+1��°�� ����Ѵ�.
    end
    
    err(i) = max( abs(x_exact - x_new(:,i)) );
    if err(i) < e_tol
        count = i;
        break; % break �� �����ִ� ���� ����� �ݺ���(�� ���� for��)�� ���� ���´�
    end
end

end
