function[raiz] = ponto_fixo(f, g, erro,a,b)
    _p = (a + b)/2;
    p = g(_p);
    while  abs(f(_p)) > erro
        _p = p;
        p = g(_p);
    end
    raiz=p;
end

disp(ponto_fixo(@(x)(x^3+4*x^2-10), @(y)(y-((y^3+4*y^2-10)/(3*y^2+8*y))), 0.1, 1.0, 2.0 ));

% g(x) pode ser isso (10/(4+y))^0.5 