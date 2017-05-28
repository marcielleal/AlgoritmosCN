%Metodos de refinamento
%Metodo da bisseção
function[raiz] = bissecao(f,erro,a,b)
    y=f(b);
    while abs(b-a)>erro | abs(y)> erro
        raiz=(a+b)/2; %e se a<0?
        y=f(raiz);
        
        if f(a)*y>0
            a=raiz;
        else
            b=raiz;
        end
    end
    raiz=(a+b)/2;
endfunction

disp(bissecao(@(x)(x^2-2), 0.0001, 0, 10 ));
