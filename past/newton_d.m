

clc;
clear;

etol = 10^(-9) ;
N = 100 ;
newton_result = zeros(N,4);

a0 = 1.5;
alpha = 1.134724138 ;

for i = 1 : N
    fa0 = a0^6 - a0 - 1;
    dfa0 = 6*a0^5 - 1;
%     fa = cos(a) - 1/2 - sin(a);
%     dfa = -sin(a) - cos(a);
    
    a1 = a0 - fa0/dfa0;
    
    
    newton_result(i,:) = [a0, fa0, a1-a0, alpha-a0];
    if abs(a0 - a1) <= etol
        return;
    end
    a0 = a1;

end
