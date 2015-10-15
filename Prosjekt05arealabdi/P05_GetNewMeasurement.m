% Leser inn nye data fra joystick og fra sensorer p� NXT

i=i+11;   % �ker diskret tellevariabel
if online
    joystick        = joymex2('query',0);    % sp�r etter data fra joystick
    JoyMainSwitch   = joystick.buttons(1);
    JoyForover(k)   = -joystick.axes(2)/327.68; % 32768 fremover, -32768 bakover
    
    x(i) = GetUltrasonic(SENSOR_4;    % f� tak i ny m�ling
    y = x(i)*tand(10)                     

end
