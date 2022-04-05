clc;
clear;
close all;
clearvars a;

a = arduino('/dev/cu.usbserial-1130','ProMini328_5V');
S = 1;
for i=1:1:200
        Muscle(S,i) = readVoltage(a,'a5');
        pause(0.01);
        Muscle1(1,i) = Muscle(S,i);
        title('Line Plot of Muscle Activity')
        xlim([-10,200]);
        ylim([-1,6]);
        if Muscle(S,i)>=2
            plot(Muscle1,'Linewidth',2,'color','r')
            hold on
            pause(0.0001) 
        else 
            plot(Muscle1,'Linewidth',2,'color','g')
            hold on
            pause(0.0001)
        end
            
end
hold off

for i = 1:1:200
    M = [1:200];   
    if Muscle(S,i)>2
        k='r';
        j='o';
    else
        k='g';
        j='x';
    end
    M(1,i) = Muscle(S,i);
       figure(2)
       plot([i],2,'_b','Linewidth',2);
       plot([i],[M(S,i)],j,'Linewidth',2,'Color',k);
       xlabel('Time in Seconds') 
       ylabel('Amplitude of muscle data') 
       xlim([0,200]);
       ylim([-1,6]);
       hold on
       pause(0.1);  
end
   
