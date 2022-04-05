function Rot = Rotation(J_ang)
    
    Rot = [cos(J_ang) -sin(J_ang);
           sin(J_ang)  cos(J_ang)];
end