Faktor(k)=100;
PowerBplot(k)=PowerB;
PowerCplot(k)=PowerC;
Tilt_x(1:k)=(Tilt(1,k:k));
Tilt_y(1:k)=(Tilt(2,k:k));
% Tilt_Forover(1:k)=; %henter ut x-Tilt, brukes som pådrag forover
% Tilt_Sving(1:k)=; %henter ut y-Tilt,  brukes som pådrag Sving

%Tilt har en verdi fra 0-255, 0= -90grader, 255= 90grader. 128=0grader,
%motor pådrager skal være fra 0-100, og tilt har en skala fra 0-128. derfor
%ganges Tilt(k) med forholdstallet 100/127=0.07874. 
TiltForover(k)=(double(Tilt_x(k)));
TiltSving(k)=(double(Tilt_y(k)));

if Tilt_x(k)<128
   Forover = TiltForover(k).*(0.78)- Faktor(k);
    
elseif Tilt_x(k)>128
   Forover = TiltForover(k).*(0.78)- Faktor(k);
    
end

if Tilt_y(k)<128
    Sving = (TiltSving(k).*(0.78)); %100-0, ikke minus kun pluss
    
elseif Tilt_y(k)>128
    Sving = (200-(TiltSving(k).*(0.78))) ; %100-0
    
end

    
 % X-aksen er forover




% Acceleration_x=Acceleration(1,1:k);
% Acceleration_y=Acceleration(2,1:k);


       