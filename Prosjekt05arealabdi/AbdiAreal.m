%% Areal av boks
% arealet til grunnflaten til eske

%% Initialiserer NXT
COM_CloseNXT all                % lukker alle NXT-h�ndtak
close all                       % lukker alle figurer
clear all                       % sletter alle variable
handle_NXT = COM_OpenNXT();     % etablerer nytt h�ndtak
COM_SetDefaultNXT(handle_NXT);	% setter globalt standard-h�ndtak
motorA = NXTMotor();
%% Initialiser/�pne sensorer
OpenUltrasonic(SENSOR_4);

%%  Bestemer at den skal g� 360 grader
motorA.TachoLimit = 360; % en hel runde p� 360 grader
motorA.SendToNXT();
% 
% Vektorene
i = 0:360;                  % Starter fra 0 og ender med 360
x = zeros(l,9999);      
y = zeros(1,9999));

motorA = NXTMotor('A','Power',4,'TachoLimit',10); % motor p�drag p� 4 og 10 grader hvergang

%y(i)= x(i)*tand(10); % kan finne lengden p� y ved � gange x med graden

for i = 0:360
    
    x(i)= GetUltrasonic(SENSOR_4);
    y(i)= x(i)*tand(10);
    
    Areal = ( x(i)*y(i))/2            % arealet av en trekant (G * H)/2
 
    
   if i <1
      Areal = 0
      
  end
end
%motorA.Stop(�brake�);
Totalarealen = sum(Areal)
disp(Totalarealen);



