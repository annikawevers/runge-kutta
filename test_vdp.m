% test for Van der Pol
fcn_vdp = @fcn_vdp;
tspanvdp = (linspace(0,100,4097)).'; %
y0 = [1.0 ; -6.0];
[toutvdp, youtvdp] = rk4(fcn_vdp, tspanvdp, y0);

% Position vs time 
%plot(toutvdp, youtvdp(:,1));

%Phase space evolution
plot(youtvdp(:,1), youtvdp(:,2));
