

% Textbook Example 3
% solution x = [ 0.2245 ; 0.2814 ; 0.3279 ];
clc;
clear;
A = [ 0.729 0.81 0.9 ; 1 1 1 ; 1.331 1.21 1.1 ] ;
b = [ 0.6867 ; 0.8338 ; 1 ] ;
[U x] = GE(A,b);
