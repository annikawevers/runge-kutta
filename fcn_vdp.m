% Function for Van der Pol ODE RHS
function derivs = fcn_vdp(t, y)
%return length n column vector RHS of odes for Van der Pol with a=5
 derivs = zeros(2,1);
 derivs(1) = y(2);
 derivs(2) = -5*(y(1)^2 -1)*y(2)-y(1);

end