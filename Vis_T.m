function Visualize_T = Vis_T(j,p)
    J1 = Rotation(j+0.25);
    J2 = J1*Rotation(j-0.9);
    
    J0 = Rotation(0);
    
    P0 = p(1,:)';
    P1 = p(2,:)';
    P2 = p(3,:)';
    P3 = p(4,:)';
    
    p1 = P0+(J1*P1);
    p2 = p1+(J2*P2);
    
    P0 = [1;0.5];
    
    Visualize_T = [P0,p1,p2,P3];
end