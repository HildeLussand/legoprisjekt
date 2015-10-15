
% plotter data
subplot(3,1,1)
bar(PowerA(k));        % en bar som viser p�draget akkurat n� i tid=k
axis([0 1 -100 100])
title('P�drag motor A i nuet')

subplot(3,1,2)
plot(Tid(1:k),JoyForover(1:k)); % plotter joystickens verdi fra 1 til k. 
                       % M� gj�re det p� denne m�ten for at du skal 
                       % f� samme opplevelse n�r online=0. 
title('P�drag motor A som funksjon av SAMPLE k (egentlig ikke tid)')

subplot(3,1,3)
plot(Tid(1:k),Lys(1:k));  % plotter lysets verdi fra 1 til k. 
title('Lysverdi som funksjon av SAMPLE k (egentlig ikke tid)')

% tegn n� (viktig kommando)
drawnow

