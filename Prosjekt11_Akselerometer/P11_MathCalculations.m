

Tilt_Forover(1:k)=Tilt(1,1:k); %henter ut x-Tilt, brukes som pådrag forover
Tilt_Sving(1:k)=Tilt(2,1:k); %henter ut y-Tilt,  brukes som pådrag Sving

%Tilt har en verdi fra 0-255, 0= -90grader, 255= 90grader. 128=0grader,
%motor pådrager skal være fra 0-100, og tilt har en skala fra 0-128. derfor
%ganges Tilt(k) med forholdstallet 100/127=0.07874. 
Forover(1:k)=Tilt_Forover(k)*0.7874;
Sving(1:k)=Tilt_Sving(k)*0.7874;

Acceleration_x=Acceleration(1,1:k);
Acceleration_y=Acceleration(2,1:k);


       