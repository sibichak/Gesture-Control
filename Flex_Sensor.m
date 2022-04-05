clc;
clear all;
close all;
clearvars a;

k=1;
for i=1:1:200
    if i<=75
        Out(i)=2;
        c='y';
    elseif 75<i && i<=150
        Out(i)=1;
        c='b';
    else
        Out(i)=0;
        c='r';
    end
    title('Flex sensor test')
       xlabel('Time in Seconds') 
       ylabel('Output voltage') 
       xlim([-10,200]);
       ylim([-1,3]);
       plot(Out,'Linewidth',2,'color',c)
       hold on
    pause(0.001);
end