% beregner hvordan data fra aksleromterer skal brukes for 
% � f� motorene til � bevege seg

if online
          
  
    % Beregner motorp�drag og lagrer i datavektor 
    if Tilt_Sving(k) > 128              
    Power(A)=100-Sving(k) ; %JoySving er p�drag til motorA
    Power(C)=Forover(k) ;   %JoyForover er p�drag til motorC
    
    elseif Tilt_Sving(k) < 128
    Power(A)=Forover(k) ; %TiltForover er p�drag til MotorA
    Power(C)=100-Sving(k); %Tiltsving er p�drag til MotorC

    elseif Tilt_Sving(k)==128 %ingen Tilt sving, Tilt forover styrer motorene likt
    Power(A)=Forover(k) ;    
    Power(C)=Forover(k) ;
    
    
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
