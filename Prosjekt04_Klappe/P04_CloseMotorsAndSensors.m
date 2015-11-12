if online  
    motorB.Stop;      % Stopp motorer
    motorC.Stop;      % Stopp motorere
    clear
    clear joymex2     % Clear MEX-file to release joystick
    clear online k    % Clear online og k data (før eventuell lagring i *.mat)
    clear online n
    clear handle   % Clear handle to avoid warnings when online=0
    CloseSensor(SENSOR_2);     % Steng ned sensorer
    COM_CloseNXT(handle);      % Close NXT connection.
end

