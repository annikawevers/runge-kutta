% test runge kutta with ODE system (use ode45 to verify solution) 

fcn = @fcn;
t0 = 0;
dt = 1;
y0 = [0.0 ; 1.0];
yout1 = rk4step(fcn, t0, dt, y0);
yout2 = rk4step(fcn, t0, 0.5*dt, y0);

[toutreal1, youtreal1] = ode45(@fcn, [0 1], [0.0 1.0]);
[toutreal2 ,youtreal2] = ode45(@fcn, [0 0.5], [0.0 1.0]);

solutiondt = youtreal1(end,1);
approxdt = yout1(1);
solutiondthalf = youtreal2(end,1);
approxdthalf = yout2(1);

error1 = solutiondt - approxdt;
error2 = solutiondthalf - approxdthalf;

ratio = error1/error2




