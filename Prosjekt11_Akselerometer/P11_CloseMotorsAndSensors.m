if online  
    motorC.Stop;      % Stopp motorer
    motorB.Stop;      % Stopp motorere
    clear joymex2     % Clear MEX-file to release joystick
    clear online k    % Clear online og k data (f�r eventuell lagring i *.mat)
    clear handle      % Clear handle to avoid warnings when online=0
    CloseSensor(SENSOR_3);   % Steng ned sensorer
    CloseSensor(SENSOR_1);   % Steng ned sensorer
    COM_CloseNXT(handle);      % Close NXT connection.
    
    

end

