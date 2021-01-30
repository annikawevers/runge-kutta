fcn = @fcn;
y0 = [0.0 ;1.0];
%level 6 
tspan6 = (linspace(0,3*pi,65)).';
[t6,y6] = rk4(fcn, tspan6, y0);
y6plot = y6(:,1);

%level 7
tspan7 = (linspace(0,3*pi,129)).';
[t7,y7] = rk4(fcn, tspan7, y0);
y7plot = y7(:,1);

%level 8 
tspan8 = (linspace(0,3*pi,257)).';
[t8,y8] = rk4(fcn, tspan8, y0);
y8plot = y8(:,1);

%Downsample level 7 and 8 arrays, compute differences, scale dy78 
 y7plot = y7plot(1:2:end);
 y8plot = y8plot(1:4:end);
 dy67 = y6plot - y7plot;
 dy78 = y7plot - y8plot;
 dy78 = 16 * dy78;
 clf; hold on; plot(t6, dy67, 'r-.o'); plot(t6, dy78, 'g-.+');

