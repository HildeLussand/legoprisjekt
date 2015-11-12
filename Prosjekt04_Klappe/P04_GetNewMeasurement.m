% Leser inn nye data fra joystick og fra sensorer på NXT

k=k+1;   % øker diskret tellevariabel
if online
    joystick        = joymex2('query',0);    % spør etter data fra joystick
    JoyMainSwitch   = joystick.buttons(1);
    Lyd(k) = GetSound(SENSOR_2);    %få tak i ny lydmåling
    Tid(k)= toc;
 
  
else
    if k==numel(Lyd)
        JoyMainSwitch=1; % simulerer at joystickbryter trykkes inn
    end
end
