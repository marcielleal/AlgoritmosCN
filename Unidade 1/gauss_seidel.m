function [x_s] = gauss_seidel(A,b,x,e)
syms j;
n = size(A,1);
x_e = x_s;
x_s = zeros(nlin,1);
flag = true;
while(flag)
	x_aux = x_e;
	for i : n
		x_s(i) = symsum(A(i,j)*x_s(j), j, 1, i);
	end
	x_e = x_s;
	if(norm(x_e - x_aux) < e)
		flag = false;
	end
end