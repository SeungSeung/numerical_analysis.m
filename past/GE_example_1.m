

% Textbook Example 1
% solution x = [ 0 ; 1 ; -1 ; 0 ];
clc;
clear;

A = [4  3 2 1 ; 3 4 3 2 ; 2 3 4 3 ; 1 2 3 4 ] ;
b = [ 1 ; 1 ; -1 ; -1 ] ;
[U x] = GE(A,b);
