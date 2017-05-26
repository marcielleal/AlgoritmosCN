function[raiz] = corda(f,erro,a,b)
    y=f(b);
    
    while  abs((f(b)-f(a)))> erro
        raiz=a-((b-a)*f(a)/(f(b)-f(a)));
        y=f(raiz);

        if f(a)*y>0
		    a=raiz;
	    else
	    	b=raiz;
        end
    end
    raiz=(a+b)/2;
end

disp(corda(@(x)(x^2-4*x+4), 0.1, 1, 3 ));
