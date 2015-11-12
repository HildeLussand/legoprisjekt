% %Plotting av data fra Akslerometeret.:
% 

%     plotting av tilt
    subplot(3,1,1)
    plot(Tid(1:k),Tilt(1,1:k))
    title('Tilt x, pådrag forover')
    axis([-Inf Inf -5 260])
    
    subplot(3,1,2)
    plot(Tid(1:k),Tilt(2,1:k))
    title('Tilt y, pådrag side')
    axis([-Inf Inf -5 260])
    
    subplot(3,1,3)
    plot(Tid(1:k),PowerBplot(1:k),'b-',Tid(1:k),PowerCplot(1:k),'r-')
    title('Motor B & Motor C')
    axis([-Inf Inf -100 100])

    % plotting av akselerasjon
%     subplot(3,2,2)
%     plot(Tid(1:k),Acceleration(1,1:k))
%     title('Akselerasjon x-retning')
%     axis([-Inf Inf -1500 1500])
%     
%     subplot(3,2,4)
%     plot(Tid(1:k),Acceleration(2,1:k))
%     title('Akselerasjon y-retning')
%     axis([-Inf Inf -1500 1500])
    
%     subplot(3,2,6)
%     plot(Tid(1:k),Acceleration(3,1:k))
%     title('Akselerasjon z-retning')
%     axis([-Inf Inf -1500 1500])
    drawnow % tegn nå (viktig kommando)

% 
% 
% subplot(2,1,1)
% plot(Tid(1:k), PowerB(1:k), Tid(1:k), PowerC(1:k)) 
% legend('B','C') 
% 
% subplot(2,1,2)
% plot(Tid(1:k), Sving(1:k), Tid(1:k), Forover(1:k))
% legend('Sving','Forover')

drawnow
% 
% 
