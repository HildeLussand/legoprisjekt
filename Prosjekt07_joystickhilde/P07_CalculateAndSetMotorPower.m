% beregner hvordan joystickdata skal brukes for 
% � f� motorene til � bevege seg

if online
           
    % Beregner motorp�drag og lagrer i datavektor 
    
  if JoySving(k) < 0
      
    Sving = double((JoySving(k)./327.68)+Faktor(k)); %mellomgregning
    PowerB = round(Sving*ForoverFaktor);
    PowerC = Forover;
       
   elseif JoySving(k) > 0
    Sving = double(JoySving(k)./-327.68)+Faktor(k); % mellomregning
    PowerB = Forover;
    PowerC =  round(Sving * ForoverFaktor);

   end
        
      
                           
  if PowerB>-5 && PowerB< 5 ;
      
      if PowerC>-5 && PowerC<5;
       PowerB=0 ;                     %Fjerne JoyStick offsett vist begge 
       PowerC=0 ;                     %motorp�dragene er mellom 5 og -5
      end
  
  end  
   

    motorB.Power = PowerB;
    motorB.SendToNXT();
    motorC.Power = PowerC;
    motorC.SendToNXT();
    
 
    
   
else
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
