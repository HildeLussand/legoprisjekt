% beregner hvordan joystickdata skal brukes for 
% � f� motorene til � bevege seg

if online
    
    

    
else
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end


    % Beregner motorp�drag og lagrer i datavektor 
    PowerC(k) = JoyForover(k)+ JoySving(k);  %Forover+Sving=Forover&SvingH�yre
    PowerB(k) = JoyForover(k) - JoySving(k); %Forover-Sving=Forover&SvingVenstre
        
    if PowerC(k)>-5 && PowerC(k)<5        %P�draget til MotorC=0 vist
     PowerC(k)=0 ;                        %vist JoySticken gir en verdi til
     PowerB(k)=0;                         % matlab mellom -5 og 5
    motorC.Power = PowerC(k) ;
    motorC.SendToNXT();
    motorB.Power = PowerB(k);
    motorB.SendToNXT();
    
    elseif PowerB(k)>-5 && PowerB(k)<5    %P�draget til MotorC=0 vist
    PowerB(k)=0;                         %vist JoySticken gir en verdi  
    PowerC(k)=0 ;                        % til matlabmellom -5 og 5
    motorB.Power = PowerB(k);
    motorB.SendToNXT();
    motorC.Power = PowerC(k) ;
    motorC.SendToNXT();
    
    else
        
    motorC.Power = PowerC(k) ;
    motorC.SendToNXT();
    motorB.Power = PowerB(k);
    motorB.SendToNXT();
    end
    
