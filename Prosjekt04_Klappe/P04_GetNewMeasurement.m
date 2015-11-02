% Leser inn nye data fra joystick og fra sensorer p� NXT

k=k+1;   % �ker diskret tellevariabel
if online
    joystick        = joymex2('query',0);    % sp�r etter data fra joystick
    JoyMainSwitch   = joystick.buttons(1);
    JoyForover(k)   = -joystick.axes(2)/327.68; % 32768 fremover, -32768 bakover
    JoySving(k)   = -joystick.axes(1)/327.68; % 32768 h�yre, -32768 venstre
    Lyd(k) = GetSound(SENSOR_2);    %f� tak i ny lydm�ling
    % Lys(k) = GetLight(SENSOR_3);    % f� tak i ny lysm�ling
                     
    if k==numel(Lyd)
        JoyMainSwitch=1; % simulerer at joystickbryter trykkes inn
    end
end
