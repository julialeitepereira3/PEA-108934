function [rho, T,P] = ISA_atmosphere(h)
    
    T0 =   288.15; 
    P0 =   101325; 
    R =   287.058; 
    a = -6.5e-3; 
    b =   0.0289644; 
    h0 =   0; 

    T = T0 + a * (h - h0);
    P = P0 * exp(-b * (h - h0));
    
    rho = P / (R * T);
end

