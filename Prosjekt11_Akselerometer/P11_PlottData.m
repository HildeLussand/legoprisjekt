%Plotting av data fra Akslerometeret.:


    % plotting av tilt
    subplot(3,2,1)
    plot(Tid(1:k),Tilt(1,1:k))
    title('Tilt x-retning')
    axis([-Inf Inf -5 260])
    
    subplot(3,2,3)
    plot(Tid(1:k),Tilt(2,1:k))
    title('Tilt y-retning')
    axis([-Inf Inf -5 260])
    
    subplot(3,2,5)
    plot(Tid(1:k),Tilt(3,1:k))
    title('Tilt z-retning')
    axis([-Inf Inf -5 260])

    % plotting av akselerasjon
    subplot(3,2,2)
    plot(Tid(1:k),Acceleration(1,1:k))
    title('Akselerasjon x-retning')
    axis([-Inf Inf -1500 1500])
    
    subplot(3,2,4)
    plot(Tid(1:k),Acceleration(2,1:k))
    title('Akselerasjon y-retning')
    axis([-Inf Inf -1500 1500])
    
    subplot(3,2,6)
    plot(Tid(1:k),Acceleration(3,1:k))
    title('Akselerasjon z-retning')
    axis([-Inf Inf -1500 1500])
    drawnow % tegn nå (viktig kommando)



  


