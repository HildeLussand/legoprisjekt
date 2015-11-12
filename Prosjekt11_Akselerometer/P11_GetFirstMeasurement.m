% F�r tak i f�rste m�ling fra NXT med tilh�rende tidspunkt.

if online
    k=1;                         % Diskret tellevariabel    
    PowerB(k)=0;
    PowerC(k)=0;
    Forover=1;
    Sving=1;
    Tilt(:,k) = GetAbsoluteIMU_Tilt(SENSOR_1);      % Hent f�rste m�ling
    Acceleration(:,k) = GetAbsoluteIMU_Acc(SENSOR_1); % Hent f�rste m�ling
    Tid(k)=0; % f�rste tidspunkt er t=0
    tic
    
else
    load(filename)     % Laster datafil dersom online=0
    online=0;          % Dersom filename.mat inneholdt online=1
    k=1;               % Dersom filename.mat inneholdt f.eks. k=1521
    JoyMainSwitch=0;   % For � kunne kj�re samme kode som n�r online=1 
end

nullpunkt = Tilt(1,1,1);    % kode som er felles for online=0=1



