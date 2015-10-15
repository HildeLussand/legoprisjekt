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

P01_InitializeNXT 
P01_GetFirstMeasurement
while ~JoyMainSwitch
    P01_GetNewMeasurement
    P01_MathCalculations    
    P01_CalculateAndSetMotorPower
    P01_PlottData
end
P01_CloseMotorsAndSensors


