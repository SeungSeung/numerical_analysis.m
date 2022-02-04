

% Textbook Example 2
% solution x = [ 2.6 ; -3.8 ; -5 ];
clc;
clear;
A = [6 2 2 ; 2 2/3 1/3 ; 1 2 -1] ;
b = [ -2 ; 1 ; 0] ;
[U x] = GE(A,b);
