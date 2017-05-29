function[raiz] = corda(f,erro,a,b)
   
    _x = (a+b)/2;
        
    delta = -(f(_x)/deriv(f, _x));
   
    while abs(delta/_x) > erro
    
        x = _x + delta;    
    
        if x > a && x < b
    		if f(a)*f(x) > 0
    		    a = x;
    		else
    		    b = x;
    		end
        end
        
        _x = x;
        
        delta = -(f(_x)/deriv(f, _x));
    end
    raiz = _x;
end

tic()
disp(corda(@(x)(x^2-2), 0.00001, -89.0, 100.0 ));
toc()