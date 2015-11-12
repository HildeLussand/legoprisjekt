% beregner hvordan joystickdata skal brukes for 
% å få motorene til å bevege seg


if online 
    
    if   x==1 
         PowerB=15;  %Robot kjører forover ved 1 klapp
         PowerC=15;
    elseif x==2
         PowerB=15;   %Robot svinger ved 2 klapp
         PowerC=0;
    elseif x==3
         PowerB=0; %Robbot svinger ved 3 klapp.
         PowerC=15;
   elseif x==4
         PowerB=0; %Robbot stopper ved 4 klapp.
         PowerC=0;
        
    else
       PowerB=0;
       PowerC=0;
    end
    
    
motorC.Power = PowerC ;
motorC.SendToNXT();
motorB.Power = PowerB;
motorB.SendToNXT();       
      
 else  
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
       
