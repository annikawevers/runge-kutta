% Functino for RHS of odes for simple harmonic oscillator
function dydt = fcn(t, y)
%return length n column vector RHS of odes
dydt = zeros(2,1);
dydt(1) = y(2);
dydt(2) = -y(1);

end

