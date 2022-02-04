

clc;
clear;

A = [20 1 -1; 1 -10 1; -1 1 10];
b = [17 13 18]; b = b';
x_exact = [1; -1; 2];
% exact soln을 알고 있으면 x_exact에 대입하고 모르는 경우는 놔두세요.

e_tol = 10^(-16);

[x_new, err, count] = jacobi_system_solver(A, b, x_exact, e_tol);
% x_new에 저장되는 값이 연립방정식의 근사된 해.