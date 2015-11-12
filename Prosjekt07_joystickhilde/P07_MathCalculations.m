%En omregningsfaktor
Faktor(k)=100; 

%omgjør JoyForover uint16 talltypen om til doubletalltype for å kunne
%utføre utregninger.
Forover = double(JoyForover(k));

%Forover Faktor som brukes i utregning for å finne Power til motoren som
%skal svinge
ForoverFaktor=(Forover./Faktor(k));

%lagre data i en vektor for bruk til plotting.
PowerBPlot(1:k)=PowerB;      
PowerCPlot(1:k)=PowerC;
SvingPlot = double(JoySving(k)./327.68); 


