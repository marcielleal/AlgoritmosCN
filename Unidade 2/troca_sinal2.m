function[intervalo] = troca_sinal(f,x,p)
    
    while (f(x)*f(x+p) > 0)
        x = x + p;
    end
    
   intervalo = [x x+p];
end

clc()
disp(troca_sinal(@(x)(x^2-2), 0, 1));