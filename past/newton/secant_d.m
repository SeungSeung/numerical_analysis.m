
clear;
clc;

etol = 10^-9;
N = 100; % given or chosen
a = 2;
b = 1; % find yourself using the graph.
fa = a^3 - 2*a - 2; % change this part depending on the problem
secant_result = zeros(N, 4);

alpha = 1.96930;

for i = 1 : N
   fb = b^3 - 2*b - 2; % change this part depending on the problem
   
   c = b - fb*(b - a)/(fb - fa);
   
   secant_result(i,:) = [b, fb, b-a, alpha-a];  % print out the table similar to Table 3.3
   
   if abs(b-a) <= etol
       return
   end % stopping criterion
   a = b;
   fa = fb;
   b = c;
end


