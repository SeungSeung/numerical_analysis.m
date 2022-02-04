

function [x_new, err, count] = gauss_seidal_solver(A,b, x_exact, e_tol)

% A = [9 1 1; 2 10 3; 3 4 11];
% b = [10 19 0]; b = b';
% x_exact = [1; 2; -1];
% e_tol = 10^(-16) ;




iter_N = 100;
count = 0;
% for i = 1 : 10
%     x_temp(1) = (b(1) - sum(A(1,:)*x_temp(:)) + A(1,1)*x_temp(1) )/A(1,1);
%     x_temp(2) = (b(2) - sum(A(2,:)*x_temp(:)) + A(2,2)*x_temp(2) )/A(2,2);
%     x_temp(3) = (b(3) - sum(A(3,:)*x_temp(:)) + A(3,3)*x_temp(3) )/A(3,3);
%     x_new(:,i+1) = x_temp;
%     
%     err(i) = max( abs(x_exact - x_new(:,i)) );
% end

for i = 1 : iter_N
    for j = 1 : size(x_new,1)
        x_temp(j) = (b(j) - sum(A(j,:)*x_temp(:)) + A(j,j)*x_temp(j) )/A(j,j);
        % jacobi������� �޸� x_temp�� Ƚ���� ���� �ε����� ���� ������ ������ڸ��� �ٷ� ���ȴ�.
    end
    
    x_new(:,i+1) = x_temp; % �̹� ���࿡�� ���� x ������ ����.
    
    err(i) = max( abs(x_exact - x_new(:,i)) );
    if err(i) < e_tol
        count = i;
        break; % break �� �����ִ� ���� ����� �ݺ���(�� ���� for��)�� ���� ���´�
    end
end
        
end
