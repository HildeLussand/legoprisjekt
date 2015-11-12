% beregner hvordan data fra aksleromterer skal brukes for 
% å få motorene til å bevege seg


 if online
           
   if TiltSving(k) < 128
     PowerB= round(Forover) ; %JoySving er pådrag til motorA
     PowerC= round((Forover/Faktor(k)).*Sving) ;   %JoyForover er pådrag til motorC  
    
   elseif TiltSving(k) > 128  
    PowerC= round(Forover) ;   %JoyForover er pådrag til motorC
    PowerB= round((Forover/Faktor(k)).*Sving)  ; %JoySving er pådrag til motorA
    
%    else
%     PowerB= Forover(k);  
%     PowerC= Forover(k);
    end 
     
    
    motorB.Power = PowerB ;
    motorB.SendToNXT();
    motorC.Power = PowerC;
    motorC.SendToNXT();
    

    
   
else
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
