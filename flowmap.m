function dx=flowmap(x)
    global Isp g fuel_mass_rate Cd_base A Ve Pe P0 Ae Re 
    h=x(1);
    v=x(2);
    m=x(3);
    q=x(4);
    y=x(5);
    xh=x(6); %distância percorrida horizontalmente 

    [rho,T,P] = ISA_atmosphere(h);

    if q==1   
        FT = 0;
        dm = 0;
    else 
        
        FT = fuel_mass_rate*Ve+(Pe-P0)*Ae;
        dm= -fuel_mass_rate;
    end 


    
   gh=g/(1+h/Re)^2;
    
    F_aero = - 0.5 * Cd_base * A * rho * v*norm(v);
     if h<=130
        dy=0;
        dv=FT/m+F_aero/m-gh;
        dxh=0;
        dh=v;
     else

        dv=FT/m+F_aero/m-gh*sin(y);

        dy=-(1/v)*(gh-(v^2/(Re+h))*cos(y));

        dxh=Re/(Re+h)*v*cos(y);

        dh=v*sin(y);
     end

    dx=[dh;dv;dm;0;dy;dxh];
