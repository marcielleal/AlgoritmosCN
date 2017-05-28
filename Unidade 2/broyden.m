function [x_ap]=broyden(x_ini,f,n,erro)
  x_ap = x_ini
  B_ap = eye(n);
  B_ap_1 = eye(n);
  while norm(f(num2cell(x_ap){:})) > erro
    x_novo = x_ap - (B_ap_1*f(num2cell(x_ap){:}));
    delta_F = f(num2cell(x_novo){:}) - f(num2cell(x_ap){:});
    delta_x = x_novo - x_ap;
    u = ((delta_F - (B_ap*delta_x))/(delta_x'*delta_x));
    B_aux = B_ap;
    B_ap = B_ap + (u*delta_x');
    B_ap_1 = inv(B_aux) - ((inv(B_aux)*u*delta_x'*inv(B_aux))/(1+(delta_x'*inv(B_aux)*u)));
    x_ap = x_novo;
  end;
end;

disp(broyden([1;2], @(x,y) [x.^2 + y.^2 - 1; x + y - 1], 2, 0.01));