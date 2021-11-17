function Traj=thormang3_manip_traj(x_ini, y_ini, z_ini, p_ini, r_ini, ya_ini, x_end, y_end, z_end)
z_end = 0.78; %table height fixed (minus pelvis height)
r_end = 0; %need gripper parallel to table
p_end = 0; 
ya_end = atan((x_ini-x_end)/(y_ini-y_end)); %need test
tinterval1 = 2; %second
tinterval2 = 2; 
timeStep = 0.1;
trajTime1=0:timeStep:tinterval1;
trajTime2=(tinterval1+timeStep):timeStep:(tinterval1+tinterval1);
Trajx1=linspace(x_ini, x_ini, length(trajTime1));
Trajy1=linspace(y_ini, y_ini, length(trajTime1));
Trajz1=linspace(z_ini, z_end, length(trajTime1));
Trajp1=linspace(p_ini, p_end, length(trajTime1));
Trajr1=linspace(r_ini, r_end, length(trajTime1));
Trajya1=linspace(ya_ini, ya_end, length(trajTime1));

Trajx2=linspace(x_ini, x_end, length(trajTime2));
Trajy2=linspace(y_ini, y_end, length(trajTime2));
Trajz2=linspace(z_end, z_end, length(trajTime2));
Trajp2=linspace(p_end, p_end, length(trajTime2));
Trajr2=linspace(r_end, r_end, length(trajTime2));
Trajya2=linspace(ya_end, ya_end, length(trajTime2));

Traj=[trajTime1 trajTime2;
       Trajx1 Trajx2;
       Trajy1 Trajy2;
       Trajz1 Trajz2;
       Trajp1 Trajp2;
       Trajr1 Trajr2;
       Trajya1 Trajya2].'; 
%Traj=[t x y z p r ya]
%      . . . . . . . 
%      . . . . . . .
end
