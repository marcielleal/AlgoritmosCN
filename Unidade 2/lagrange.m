function [a b c d] = lagrange(f)
coef = sym2poly(f);
b = lp(coef);
coef1 = fliplr(coef);
a = 1/lp(coef1);
fprintf('Existe no minimo uma raiz positiva em f no intervalo de extremos %d e %d\n', a, b);
coef = -1*sym2poly(f);
c = lp(coef);
coef1 = fliplr(coef);
d = 1/lp(coef1);
fprintf('Existe no minimo uma raiz negativa em f no intervalo de extremos %d e %d\n', a, b);

function lx = lp(coef)
n = size(coef,2) - 1;
an = coef(1);
b = min(coef);
if(b > 0)
  b = 0;
end
k = n - find(coef < 0, 1) + 1;
lx = 1 + nthroot(abs(b)/an, n-k);