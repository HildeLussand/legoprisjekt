
% plotter data

subplot(2,2,1)
    bar(PowerA(k)),        % en bar som viser pådraget akkurat nå i tid=k
    axis([0 1 -100 100])
    title('Pådrag motor A i nuet')

subplot(2,2,2)
    bar(PowerC(k)),        % en bar som viser pådraget akkurat nå i tid=k
    axis([0 1 -100 100])
    title('Pådrag motor C i nuet')

subplot(2,2,3)
    plot(Tid(1:k),Lyd(1:k))
    xlabel('Tid [sekund]')
    ylabel(' Lydsignal ')

% tegn nå (viktig kommando)
drawnow

