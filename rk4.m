function [tout, yout] = rk4(fcn, tspan, y0)
% Inputs
% fcn: Function handle for right hand sides of ODEs (returns
% length-n column vector)
% tspan: Vector of output times (length nout).
% y0: Initial values (length-n column vector).
%
% Outputs
% tout: Vector of output times.
% yout: Output values (nout x n array).
% one row for each time step, column for each initial 

%step size given by adjacent elements in t span 

nout = length(tspan);%increasing order 
t = tspan;
y = zeros(nout, length(y0));
y(1,:) = y0;

for i=1:(nout-1)
    dt = t(i+1)-t(i);
    ystep = rk4step(fcn, t(i), dt, (y(i,:).'));   
    y(i+1,:) = ystep.';
end

yout = y;
tout = tspan;

end
