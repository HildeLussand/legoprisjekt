
% plotter data

subplot(2,2,1)
    bar(PowerA(k)),        % en bar som viser p�draget akkurat n� i tid=k
    axis([0 1 -100 100])
    title('P�drag motor A i nuet')

subplot(2,2,2)
    bar(PowerC(k)),        % en bar som viser p�draget akkurat n� i tid=k
    axis([0 1 -100 100])
    title('P�drag motor C i nuet')

subplot(2,2,3)
    plot(Tid(1:k),Lyd(1:k))
    xlabel('Tid [sekund]')
    ylabel(' Lydsignal ')

% tegn n� (viktig kommando)
drawnow

