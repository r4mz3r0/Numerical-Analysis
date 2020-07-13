function [dt_ab,dt_am] = test_time_step(dt, lambda)
    %function that indicates if the considered method needs some restriction on the time-step to ensure stability of the method, in the specific case of AB4 and AM4
    %the method is based on evaluating the roots the characteristic polynomial associated to each method
    %if all the roots have a modulus < 1 then the time-step is well-chosen, the method is stable
    %if at least one root has a modulus > 1 then the time-step is too big, the method is unstable
    %INPUT:
    %dt is the chosen time-step
    %lambda is the coefficient in the IVP
    %OUTPUTS:
    %dt_ab: gives condition on the time-step while using 4th order Adams-Bashforth method   
    %dt_am: gives condition on the time-step while using 4th order Adams-Moulton method    
    
    % Charasteristic polynomial coefficients for 4th order Adams-Bashforth method
    a = 1;
    b = -(1 + 55/24 * dt * lambda);
    c = 59 * dt * lambda/24;
    d = - 37 * dt * lambda/24;
    e = 9 * dt *lambda/24; 
    Qab = [a,b,c,d,e];
    Rab = roots(Qab);

    % Test on the roots of the polynomial
    if (max (abs(Rab))) <1
        dt_ab = 'dt is well-chosen, the method is stable'
    else
        dt_ab = 'Careful dt is too big, the method is unstable'
    end
    
    % Charasteristic polynomial coefficients for 4th order Adams-Moulton method
    f = 1 - 251/720 * dt * lambda;
    g = -(1 + 646 * dt * lambda/720 );
    h = 264 * dt * lambda/720;
    i = -106 * dt *lambda/720;
    j = 19 * dt * lambda/720;
    Qam = [f,g,h,i,j];
    Ram = roots(Qam);
    
    % Test on the roots of the polynomial
    if (max (abs(Ram))) <1
        dt_am = 'dt is well-chosen, the method is stable'
    else
        dt_am = 'Careful dt is too big, the method is unstable'
    end
    
end %end function