%%
% Prosjekt01_IntegrateFilterDerivate
%
% Program for kj�ring av motor A via joystick.  
% M�ling av lyssignal og plotting av data som funksjon av tid
% Programmet skal brukes til etablering av funksjonene for 
% integrasjon, filtrering og derivasjon.

clear; close all       % Alltid lurt � rydde opp f�rst
online=1;              % Er du koplet til NXT eller ikke?
filename = 'P01_Lys.mat'; % Angi navnet p� datafilen dersom online=0. 
                          % Brukes ikke dersom online=1 
m=20;

%sampels per filtrering.
P04_InitializeNXT 
P04_GetFirstMeasurement
while ~JoyMainSwitch 
   
    P04_GetNewMeasurement
    P04_JoysticOffsett
    P04_MathCalculations    
    P04_CalculateAndSetMotorPower
    P04_PlottData
end
P02_CloseMotorsAndSensors


