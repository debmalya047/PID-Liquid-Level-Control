A = pi*1;                % area of the surface(radius of the tank is 1 meter),
                        % area of the outlet can be considered to have negligible area
c = 0.6*sqrt(2*9.81);    % discharge coefficient
                        % flow rate of the inlet water into the tank maximum 10 m^3/sec. 

Kp = 0.5;                % PID controller coefficients
Ki = 0.2;
Kd = 0.0001;

Kd_filter = 0.05*Kd;
