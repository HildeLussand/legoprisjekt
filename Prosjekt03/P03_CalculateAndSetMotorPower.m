% beregner hvordan joystickdata skal brukes for 
% � f� motorene til � bevege seg

if online 
%     if reg(k) > fart 
%         reg(k) = fart;
%     elseif reg(k) < -1*fart
%         reg(k) = -1*fart;
%     end
    if (fart - reg(k)) > 100
        motorA.Power = 100;
        motorA.SendToNXT();
        PowerA(k) = motorA.Power;
    elseif (fart - reg(k)) < -100
        motorA.Power = -100;
        motorA.SendToNXT();
        PowerA(k) = motorA.Power;
    else
        motorA.Power = fart - reg(k);
        motorA.SendToNXT();
        PowerA(k) = motorA.Power;
    end
    if (fart + reg(k)) > 100
        motorC.Power = 100;
        motorC.SendToNXT();
        PowerC(k) = motorC.Power;
    elseif (fart + reg(k)) < -100
        motorC.Power = -100;
        motorC.SendToNXT();
        PowerC(k) = motorC.Power;
    else
        motorC.Power = fart - reg(k);
        motorC.SendToNXT();
        PowerC(k) = motorC.Power;
    end

   

else
    pause(0.01) % simulerer NXT-Matlab kommunikasjon i online=0
end
