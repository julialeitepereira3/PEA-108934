global Isp g fuel_mass_rate Cd_base A Ve Pe P0 Ae
rocket_diameter =   0.5;
Ve = 2.5 * 10^3; %m/s não nuclear
Pe = 100000 %Pa - ver qual o valor ao certo para optimal expansion neste caso
P0 = 0.025 %MPa - tem que ser parecidos para optimal expasion
Ae = pi * (0.5 /   2)^2; 

%
g=9.81;
fuel_mass_rate=400;
Cd_base=0.5;
A = pi * (rocket_diameter /   2)^2; 

m0=1000; 
x0=[0;0;m0];
[t,x]=ode45(@f,[0 400],x0);

for I=1:3
    subplot(3,1,I)
    plot(t,x(:,I))
end
