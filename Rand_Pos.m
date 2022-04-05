clc;
close all;

F1 = [1,10; 1,10.5; 1,9.5; 1,7.3];
F2 = [1,10; 1,11; 1,10; 1,7.5];
F3 = [1,10; 1,10; 1,9; 1,7.1];
F4 = [1,10; 1,9.2; 1,8.5; 1,6.5]; 
Thumb = [-1,0; -1,-4; -1,-4; 0,0];
F = [F1 ;F2 ;F3 ;F4];
A = [];
B = [];
J = 0:0.01:1.5;
for i = 1:25
    r = randi([1,151],1,5);
    k = 1;
    Ang = J(1,r(1));
    f = F(1:4,:);
    Pos = Vis(Ang,f);
    disp('Fold');
    A(k,:) = Pos(1,:);
    B(k,:) = Pos(2,:);
    
    k = 2;
    Ang = J(1,r(2));
    f = F(5:8,:);
    Pos = Vis(Ang,f);
    disp('Fold');
    A(k,:) = Pos(1,:);
    B(k,:) = Pos(2,:);
    
    k = 3;
    Ang = J(1,r(3));
    f = F(9:12,:);
    Pos = Vis(Ang,f);
    disp('Fold');
    A(k,:) = Pos(1,:);
    B(k,:) = Pos(2,:);
    
    k = 4;
    Ang = J(1,r(4));
    f = F(13:16,:);
    Pos = Vis(Ang,f);
    disp('Fold');
    A(k,:) = Pos(1,:);
    B(k,:) = Pos(2,:);
    
    k = 5;
    Ang = -J(1,r(5));
    Pos = Vis_T(Ang,Thumb);
    disp('Fold');
    A(k,:) = Pos(1,:);
    B(k,:) = Pos(2,:);

    
    plot3([1,1],[0.5,4.5],[10,10],'LineWidth',10,'Color','k');
    axis([-40 10 -10 10 -10 40])
    hold on
    plot3([1,1],[4.5,4],[10,-5],'LineWidth',10,'Color','k'); 
    plot3([1,1],[4,1],[-5,-5],'LineWidth',10,'Color','k'); 
    plot3([1,1],[1,0.5],[-5,10],'LineWidth',10,'Color','k'); 
    
    
    plot3([A(1,1) A(1,2)] ,[1,1],[B(1,1) B(1,2)],'LineWidth',10,'Color','b');
    plot3([A(1,2) A(1,3)] ,[1,1],[B(1,2) B(1,3)],'LineWidth',8,'Color','b');
    plot3([A(1,3) A(1,4)] ,[1,1],[B(1,3) B(1,4)],'LineWidth',7,'Color','b');

    plot3([A(2,1) A(2,2)] ,[2,2],[B(2,1) B(2,2)],'LineWidth',10,'Color','b');  
    plot3([A(2,2) A(2,3)] ,[2,2],[B(2,2) B(2,3)],'LineWidth',8,'Color','b');
    plot3([A(2,3) A(2,4)] ,[2,2],[B(2,3) B(2,4)],'LineWidth',7,'Color','b');
    
    plot3([A(3,1) A(3,2)] ,[3,3],[B(3,1) B(3,2)],'LineWidth',10,'Color','b');  
    plot3([A(3,2) A(3,3)] ,[3,3],[B(3,2) B(3,3)],'LineWidth',8,'Color','b');
    plot3([A(3,3) A(3,4)] ,[3,3],[B(3,3) B(3,4)],'LineWidth',7,'Color','b');
    
    plot3([A(4,1) A(4,2)] ,[4,4],[B(4,1) B(4,2)],'LineWidth',10,'Color','b');  
    plot3([A(4,2) A(4,3)] ,[4,4],[B(4,2) B(4,3)],'LineWidth',8,'Color','b');
    plot3([A(4,3) A(4,4)] ,[4,4],[B(4,3) B(4,4)],'LineWidth',7,'Color','b');

    plot3([A(5,1) A(5,2)] ,[B(5,1) B(5,2)],[3,3],'LineWidth',10,'Color','m');  
    plot3([A(5,2) A(5,3)] ,[B(5,2) B(5,3)],[3,3],'LineWidth',10,'Color','m');
    
pause(0.5);
hold off 
end
    




