Grenseverdi=XX;              
Avvik(k) = Lyd(k)- nullpunkt; %nullpunkt er første Lydmåling. 
                               


if Avvik(k) > Grenseverdi && Flanke(k)==0 %Avvik fra nullpunkt er større enn
        Flanke(k)=1;                      % en manuell satt grenseverdi
        Tid(k)=toc;                       %Tid ved registrert klapp
        Ts = Tid(k)- Tid(k-1);            %Tida mellom hvert klapp
    
        if Ts<1;  %tidskritte mindre en 1 sek, starter diskre tellervar.
               n=1+n;

        elseif Ts>1; %tidskritt mer en 1 sek, tidskritt nulstilles
               n=1;
        end
    
elseif  Avvik(k) < Grenseverdi    %resette flankeverdi når det ikke er lyd
        Flanke(k)=0;
           
else 
    Flanke(k)= 2+1;           %andre verdier over grenseverdien vil bli
              	              %forskjellig fra 1
end                            










