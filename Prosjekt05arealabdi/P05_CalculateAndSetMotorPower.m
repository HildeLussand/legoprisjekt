% beregner hvordan joystickdata skal brukes for 
% � f� motorene til � bevege seg

if online
    % Beregner motorp�drag og lagrer i datavektor
    PowerA(k) = JoyForover(k);
    
    % Setter powerdata mot NXT
    motorA.Power = PowerA(k);
    motorA.SendToNXT();
else
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
