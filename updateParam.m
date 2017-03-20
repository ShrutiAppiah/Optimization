function [th,m_l,k_l,b_l] = updateParam(th,dth,DENSITY,YOUNGS_MOD_L,DAMPING_RATIO_L,AREA)

% Update the value of thickness
th = th-dth;

% Volume of lining [m^3]
v_l = AREA*th;

% Mass of lining [kg]
m_l = DENSITY*v_l;

% Spring constant of lining [N/m]
k_l = YOUNGS_MOD_L*AREA/th;

% Damping coefficient
b_l = DAMPING_RATIO_L*2*sqrt(k_l*m_l);