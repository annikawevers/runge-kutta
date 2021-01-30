function yout = rk4step(fcn, t0, dt, y0)

% Inputs
% fcn: Function handle for right hand sides of ODEs (returns
% length-n column vector).
% t0: Initial value of independent variable.
% dt: Time step.
% y0: Initial values (length-n column vector).
%
% Output
% yout: Final values (length-n column vector).
                                   

f0 = fcn(t0,y0);
f1 = fcn(t0+dt/2, y0+dt*f0/2);
f2 = fcn(t0+dt/2, y0+dt*f1/2);
f3 = fcn(t0+dt, y0+dt*f2);
y = y0 + dt*(f0/6 + f1/3 + f2/3 + f3/6);
yout = y;                                                         

      

end