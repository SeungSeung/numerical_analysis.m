

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
        % i는 시행횟수에 대한 인덱스인데 i번째 인덱스를 이용해 i+1번째를 계산한다.
    end
    
    err(i) = max( abs(x_exact - x_new(:,i)) );
    if err(i) < e_tol
        count = i;
        break; % break 를 덮고있는 가장 가까운 반복문(이 경우는 for문)을 빠져 나온다
    end
end

end
