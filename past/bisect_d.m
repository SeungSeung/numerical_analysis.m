

clc; % 매트랩 커맨드(명령)창 지우기
clear; % 매트랩에서 작업한 모든 변수들을 지웁니다.

a = 1; % 구간에 해당하는 값 입력
b = 2; % 구간에 해당하는 값 입력
etol = 0.001; % 에러의 허용범위
N = 100; % 우리가 bisection mtehod를 최대로 반복할 횟수
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


