
Ts(k-1) = Tid(k)- Tid(k-1);
avvik(k) = Lyd(k)- nullpunkt;
LydIntergrert(k) = Lyd(k-1)+avvik(k-1)*Ts(k-1) ;
LydFiltrert(k) = FIR_filter(Lyd(1:k),m); 
round(LydFiltrert);

if LydFiltrert(k) > LydFiltrert(k-1); %vist lyden �ker s� skal det gies
                                      %ny kommando. Kun vist lyden �ker.
    
    if LydFiltrert(k)<250 && LydFiltrert(k)> 160
    rettfrem=1;
    stopp=0;
    bakover=0;
    
     
    
    elseif   LydFiltrert(k)<330 && LydFiltrert(k)> 250
    rettfrem=0;
    stopp=1;
    bakover=0;
    
    elseif   LydFiltrert(k)<1000 && LydFiltrert(k)> 330
    rettfrem=0;
    stopp=0;
    bakover=1; 
    end
    
elseif LydFiltrert(k) < LydFiltrert(k-1)
   rettfrem_holdefunksjon= rettfrem;  %holder verdiene fra sist, n� m� Lydfiltrert �ke 
   stopp_holdefunksjon= stopp;         %for at verdiene skal endre seg.
   bakover_holdefunksjon= bakover;
   
else
  rettfrem_holdefunksjon= rettfrem;  %holder verdiene fra sist, n� m� Lydfiltrert �ke 
   stopp_holdefunksjon= stopp;         %for at verdiene skal endre seg.
   bakover_holdefunksjon= bakover;
   
end 
    
    
