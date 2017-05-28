function [raiz] = corda(f,erro,a,b)
  while abs(f(a)-f(b)) > erro
    raiz=a-((b-a)*f(a)/(f(b)-f(a)));

    if f(a)*f(raiz)>0
      a=raiz;
    else
      b=raiz;
    end
  end
end

disp(corda(@(x)(x.^2-4*x+4), 0.1, 1, 3 ));
