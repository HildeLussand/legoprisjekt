% F�r tak i f�rste m�ling fra NXT med tilh�rende tidspunkt.

if online
    k=1;                         % Diskret tellevariabel    
    Lys(k)=GetLight(SENSOR_3);
    Tid(k)=0;% F� tak i f�rste m�ling 
    Sving(k)=0;
    PowerB=0;
    PowerC=0;
    Faktor(k)=0;
    SvingPlot=0;
 
    
else
    load(filename)     % Laster datafil dersom online=0
    online=0;          % Dersom filename.mat inneholdt online=1
    k=1;               % Dersom filename.mat inneholdt f.eks. k=1521
    JoyMainSwitch=0;   % For � kunne kj�re samme kode som n�r online=1 
end

nullpunkt = Lys(1);    % kode som er felles for online=0=1

% Initialiser figurer
set(0,'DefaultFigureUnits','normalized')
figure('Position',[0.01 0.01 0.9 0.9]);

