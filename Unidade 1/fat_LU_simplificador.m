function [x] = fat_LU_simplificador(A,b) 
[m,n] = size(A);
I = eye(n);
x = b;

U = A
L1 = I;

for i = 1: n - 1
    G_i = I;
    for j = i + 1 : n
       G_i(j,i) = ((-U(j,i))/(U(i,i)));
    endfor
    L1 = G_i * L1;
    U = G_i * U;
    b = G_i * b;    
endfor

for i = n: -1: 1
    x(i) = b(i);
    for j = i + 1 : n
       x(i) = x(i) - (U(i,j) * x(j));
    endfor
    x(i) = (x(i)/U(i,i))
endfor
