% beregner hvordan joystickdata skal brukes for 
% � f� motorene til � bevege seg

if online
           
    % Beregner motorp�drag og lagrer i datavektor 
    
    if JoySving > 0              
    Power(A)=100-JoySving(k) ; %JoySving er p�drag til motorA
    Power(C)=JoyForover(k) ;   %JoyForover er p�drag til motorC
    
    elseif JoySving < 0
    Power(A)=JoyForover(k) ; %JoyForover er p�drag til MotorA
    Power(C)=100-JoySving(k); %Joysving er p�drag til MotorC

        
          if PowerA>-5 && PowerA(k)<5        
            PowerA(k)=0 ;                     %Fjerne JoyStick offsett  
            PowerC(k)=0 ;                        

    
         elseif PowerC(k)>-5 && PowerC(k)<5    %Fjerne Joystick offett
            PowerC(k)=0 ;                         
            PowerA(k)=0 ;                        
           end 
    
    
        
    motorA.Power = PowerA(k) ;
    motorA.SendToNXT();
    motorC.Power = PowerC(k);
    motorC.SendToNXT();
    
    end
    
   
else
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
