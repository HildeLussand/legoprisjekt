% Leser inn nye data fra joystick og fra sensorer p� NXT

k=k+1;   % �ker diskret tellevariabel
if online
    joystick        = joymex2('query',0);    % sp�r etter data fra joystick
    JoyMainSwitch   = joystick.buttons(1);
    Lyd(k) = GetSound(SENSOR_2);    %f� tak i ny lydm�ling
    Tid(k)= toc;
 
  
else
    if k==numel(Lyd)
        JoyMainSwitch=1; % simulerer at joystickbryter trykkes inn
    end
end
