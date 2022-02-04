

clc; % ��Ʈ�� Ŀ�ǵ�(���)â �����
clear; % ��Ʈ������ �۾��� ��� �������� ����ϴ�.

a = 1; % ������ �ش��ϴ� �� �Է�
b = 2; % ������ �ش��ϴ� �� �Է�
etol = 0.001; % ������ ������
N = 100; % �츮�� bisection mtehod�� �ִ�� �ݺ��� Ƚ��
result = zeros(N, 7);

for i = 1 : N
    c = (a + b)/2;
    fa = a^6 - a - 1;
    fb = b^6 - b - 1;
    fc = c^6 - c - 1;
    result(i,:) = [a, b, c, b-c, fc, fa, fb];
    
    
    if abs(b-c) <= etol
        root = c
        Iteration = i
        return
    end
    
    if sign(fa)*sign(fc) <=0
        b = c;
    else
        a = c;
    end
    
end


