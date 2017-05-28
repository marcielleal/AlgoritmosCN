function [x] = jacobi(A,b,x0,TOL,maxIt) # coef cons chute erro 
    #preliminar
    nlin = size(A,1); # num. de linhas
    x = zeros(nlin,1); # cria x
   
    #itera��es
    k = 1;
    while (k < maxIt)
        #itera��o de Jacobi
        for i = 1:nlin
            x(i) = 0;
            for j = [1:i-1,i+1:nlin]
                x(i) = x(i) - A(i,j)*x0(j);
            end
            x(i) = (x(i) + b(i))/A(i,i);
        end
        #crit�rio de parada
        if (norm(x-x0,'inf') < TOL)
#            disp (x);
            return;
        end
        #prepara nova itera��o
        k = k+1;
        x0 = x;
    end
    #Erro
    disp('M�todo falhou.')
end