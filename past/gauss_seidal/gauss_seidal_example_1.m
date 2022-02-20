

clc;
clear;

A = [9 1 1; 2 10 3; 3 4 11];
b = [10 19 0]; b = b';
x_exact = [1; 2; -1];
e_tol = 10^(-16);

[x_new, err, count] = gauss_seidal_solver(A, b, x_exact, e_tol);