% F�r tak i f�rste m�ling fra NXT med tilh�rende tidspunkt.

if online
    k=1;                        % Diskret tellevariabel   
    n=1;
    i=1;
    Lyd(k) = GetSound(SENSOR_2); %f� tak i f�rste m�ling
    Flanke(k)= 0;
    AntallKlapp=0;
    tic
    PowerB=0;
    PowerC=0;
else
    load('klappklapp.mat')     % Laster datafil dersom online=0
    online=0;          % Dersom filename.mat inneholdt online=1
    k=1;               % Dersom filename.mat inneholdt f.eks. k=1521
    JoyMainSwitch=0;   % For � kunne kj�re samme kode som n�r online=1 
end

nullpunkt = Lyd(1);    % kode som er felles for online=0=1

% % Initialiser figurer
% set(0,'DefaultFigureUnits','normalized')
% figure('Position',[0.01 0.01 0.9 0.9]);

