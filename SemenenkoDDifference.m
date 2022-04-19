function [A,d] = SemenenkoDDifference(x,y)
% Algorithm 3.2 Newton Divided Difference
% info = 0: got the solution; Otherwise = 1
[n,m] = size(x);
A = zeros(n+1,n+1); %initialize the matrix to be zero
if n == 1
   n = size(x,2);
end
for i = 1:n
    A(i,1) = y(i);
end
for i = 2:n
    for j = 2:i
        A(i,j) = (A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-j + 1));
    end
end
for i = 1:n
    d(i) = A(i,i);
end
end