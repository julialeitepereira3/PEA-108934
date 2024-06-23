global Isp g fuel_mass_rate Cd_base A Ve Pe P0 Ae Re
rocket_diameter =   3.7;
Ve = 9.5 * 10^3; %m/s 
Pe = 10000 %Pa - ver qual o valor ao certo para optimal expansion neste caso
P0 = 25000 %MPa - tem que ser parecidos para optimal expasion
Ae = pi * (0.5/2)^2; 
Re=6371000;


g=9.81;
fuel_mass_rate=2100;
Cd_base=0.2;
A = pi * (rocket_diameter /   2)^2; 

m0=549054; 
x0=[0;0;m0;0;89.85*pi/180;0];
[t,j,x]=HyEQsolver(@flowmap,@jumpmap,@flowset, @jumpset, x0, [0 150], [0 2]);
%%
%for I=1:3
 %   subplot(3,1,I)
  %  plot(t,x(:,I))
 
   % end
  
figure;   
subplot(3,   1,   1);
plot(t,x(:,1));
xlabel('Time (s)');
ylabel('Height (m)');
title('Height vs Time');
grid on;
grid minor;
set(gca, 'GridLineStyle', '--', 'GridColor', [0.75   0.75   0.75]);

figure;
subplot(3,   1,   2);
plot(t,x(:,2));
xlabel('Time (s)');
ylabel('Velocity (m/s)');
title('Velocity vs Time');
grid on;
grid minor;
set(gca, 'GridLineStyle', '--', 'GridColor', [0.75   0.75   0.75]);

figure;
subplot(3,   1,   3);
plot(t,x(:,3));
xlabel('Time (s)');
ylabel('Fuel mass');
title('Fuel mass vs Time');
grid on;
grid minor;
set(gca, 'GridLineStyle', '--', 'GridColor', [0.75   0.75   0.75]);
