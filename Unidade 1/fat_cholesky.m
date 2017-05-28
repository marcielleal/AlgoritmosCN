function [x] = fat_cholesky(A,b) 
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

D = diag(diag(U))
x = L1'*(D^-1)*b
