% x = [1; 1.3; 1.6; 1.9; 2.2];
% y = [0.7651977; 0.6200860; 0.4554022; 0.2818186; 0.1103623];
x=[0 0.5 1 1.5 2];
y=[0 .19 0.26 0.29 0.31];
[A,d] = SemenenkoDDifference(x,y)

fprintf('P4 = 0.380000000000000*(x-1)-0.240000000000000*(x-1)*(x-1.3)+106666666666667*(x-1)*(x-1.3)*(x-1.9)-0.033333333333333*(x-1)*(x-1.3)*(x-1.9)*(x-2.2)')
