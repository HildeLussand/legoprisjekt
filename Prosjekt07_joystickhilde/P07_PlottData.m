
% plotter data
% 

%plottene her er inspiret fra funksjonen joytest. 


 subplot(2,2,1)
  PlotJoystick=plot([0],[0],'x');    
  title('JoyStick Akser')
  set(gca,'xlim',[-32800 32800],'ylim',[-32800 32800] ); 
    
    
subplot(2,2,2)                    
 PlotMotor=plot([0],[0],'+r');
 title('Forhold mellom Motorene')
 set(gca,'xlim',[-100 100],'ylim',[-100 100]);
 
 subplot(2,2,3)
 bar(PowerB);        % en bar som viser p�draget akkurat n� i tid=k
 axis([0 1 -100 100])
 title('P�drag motor B i nuet')
  
 subplot(2,2,4)
 bar(PowerC);        % en bar som viser p�draget akkurat n� i tid=k
 axis([0 1 -100 100])
 title('P�drag motor C i nuet')

 %Handels inni plottene for �    
 set(PlotJoystick,'Xdata', joystick.axes(1),'Ydata', -joystick.axes(2));
 set(PlotMotor,'Xdata', SvingPlot, 'Ydata', Forover );

%
% tegn n� (viktig kommando)
drawnow

