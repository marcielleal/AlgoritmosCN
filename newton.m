%Considerando que ele irá convergir
function[raiz] = newton(f,x0,e1,e2)
    if f(x0)<e1
        raiz=x0;
        return;
    end
    k=1;
    
    maxIterations = 50;     %Don't allow the iterations to continue indefinitely
    while k<maxIterations
        k=1;
        
        y = f(x0);
        yprime = deriv(f,x0);
        
        if(abs(yprime) < e1) 
            break;
        end
        
        x1 = x0 - y/yprime;
        
        if(abs(x1 - x0) <= e2 * abs(x1))
            break;
        end
        
        x0 = x1; 
        k=k+1;
    end
    raiz=x0;
end

disp(newton(@(x)(x^2-x+0.25), 1, 0.0001, 0.0001));
