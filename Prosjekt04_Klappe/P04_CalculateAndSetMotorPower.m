% beregner hvordan joystickdata skal brukes for 
% � f� motorene til � bevege seg


if online 
    
    if   n==1 
         Power(B)=2;  %Robot kj�rer forover ved 1 klapp
         Power(C)=2;
    elseif n==2
         Power(B)=0;   %Robot stopper ved 2 klapp
         Power(C)=0;
    elseif n==3
        Power(B)=-2; %Robbot kj�rer babover ved 3 klapp.
        Power(C)=-2;
    end
    
    
motorC.Power = Power(C) ;
motorC.SendToNXT();
motorB.Power = Power(B);
motorB.SendToNXT();       
      
 else  
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
       
