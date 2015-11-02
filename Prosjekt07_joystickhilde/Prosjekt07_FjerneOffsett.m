%%
% Prosjekt01_IntegrateFilterDerivate
%
% Program for kjøring av motor A via joystick.  
% Måling av lyssignal og plotting av data som funksjon av tid
% Programmet skal brukes til etablering av funksjonene for 
% integrasjon, filtrering og derivasjon.

clear; close all       % Alltid lurt å rydde opp først
online=1;              % Er du koplet til NXT eller ikke?
filename = 'P01_Lys.mat'; % Angi navnet på datafilen dersom online=0. 
                          % Brukes ikke dersom online=1 

P07_InitializeNXT 
P07_GetFirstMeasurement
while ~JoyMainSwitch
    P07_GetNewMeasurement
    P07_MathCalculations    
    P07_CalculateAndSetMotorPower
    P07_PlottData
end
P01_CloseMotorsAndSensors


