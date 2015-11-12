% plotter data
% subplot(4,1,1)
% plot(Tid(1:k),nullp(1:k),'g-',Tid(1:k),Lyd(1:k),'b-',Tid(1:k),LydFiltrert(1:k),'r-');        
% title('Nullpunkt 1.lydmåling, Lydsignalet og filtrert lydignal')
% legend('Nullpkt','Lyd','LydFiltrert')Tid(1:k)) g_v_plotting(1:k),'r-')

subplot(4,1,1)
plot(Tid(1:k),Lyd(1:k),'b-');        
title('LydSignal Rundt Nullpunkt')

subplot(4,1,2)
plot(Tid(1:k),Lyd(1:k),'r-');        
title('Lydsignal 1 ')
legend('Lyd ')



% subplot(2,1,2)
% plot(Tid(1:k),avvik(1:k));        
% title('Avvik fra første Lydmåling')

subplot(4,1,3)
plot(nullp(1:k),motB(1:k),'g-');        
title('Motor venstre') %skal være piler

subplot(4,1,4)
plot(nullp(1:k),motC(1:k),'b-'); ;        
title('Motor hoyre') %skal være piler
% tegn nå (viktig kommando)
drawnow

