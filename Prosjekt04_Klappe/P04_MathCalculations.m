
motB(k)=PowerB;
motC(k)=PowerC;
nullp(k) = nullpunkt;       %Updates zero variable used for plotting
% nulll(k) = 0;               %Updates actual zero variable for plotting
% LydFiltrert(k) = FIR_filter(Lyd(1:k),m); %Calls FIR function for k
% Ts(k-1) = Tid(k)-Tid(k-1);               %Calculates the time from last timestamp to current
avvik(k) = Lyd(k)-nullpunkt; %Calculates the deviation
g_v_plotting(k)=grenseverdi  ;
% filtrertavvik(k) = LydFiltrert(k) - nullpunkt;
% LydIntegrert(k) = EulerForover(Lyd(k-1),avvik(k-1),Ts(k-1)); %Calls Euler function
% LydFiltrertIIR(k) = IIRfilter(Lyd(k),LydFiltrert(k-1));               %Calls IIR function
% LydIntegrertT(k) = Trapes(LydIntegrert(k-1),avvik(k-1:k),Ts(k-1));    %Calls Trapes function
% avvikderivert(k-1) = Derivasjon(avvik(k-1:k),Ts(k-1));
% LydDerivert(k-1) = Derivasjon(LydFiltrert(k-1:k), Ts(k-1));           %Calls Derivasjon function



if Lyd(k) > grenseverdi %lydverdi over manuelt satt grenseverdi.
    
   i=1; %Diskret tellervariabel for AntallKlapp i While løkke
   
  
   motorC.Power = 0 ;  % Motor stopper og vente på ny beskjed
   motorC.SendToNXT(); 
   motorB.Power = 0;
   motorB.SendToNXT(); 
   
   AntallKlapp=0;  %Resetter AntallKlapp vektor
   T = 0;  % Resetter Telleren til While løkke
           
     while T < 2
         P04_GetNewMeasurement % Hentet inn skript pga lysmåling
         T=(T+Tid(k)-Tid(k-1)); %T plusses med tidsforskjellene
         
          if Lyd(k) > grenseverdi && Flanke==0
                 AntallKlapp(1:i)=1;
                 Flanke = 1  ;    
                 i=i+1; %øker vektor for hver klapp
           
           elseif Lyd(k) < grenseverdi && Flanke ==1 
                 Flanke =0 ; 
                 
          
          end
      end
     
else 
    b=length(AntallKlapp); %antall klapp vektor starter med 1, vet ikke 
    x=(b-1);               %hvorfor, derfor en hurtigløsning til probleme 
end                        %løst

    
         
    
