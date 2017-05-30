function [a b] = troca_sinal(f,x,p)
while(f(x)*f(x+p) > 0)
  a = x;
  x = x + p;
  b =x;
end
fprintf('Existe uma raiz em f de extremos %d e %d\n', x, x + p);