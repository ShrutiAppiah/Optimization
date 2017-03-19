% Set resolution of optimization for incremental thickness
RES = 100;

% Material properties
DENSITY_L = 32.84;          % Density of lining material [kg/m^3]
YOUNGS_MOD_L = 27.578;      % Young's Modulus of the lining material [kPa]
DAMPING_RATIO_L = 0.096;    % Damping ratio of lining 
YOUNGS_MOD_S = 2.39e6;      % Young's Modulus of the shell [kPa]

%% Shell and contents
% Fixed parameters
AREA = 0.76*0.51;               % Area of the suitcase face [m^2], 
m_c = 34.5;
k_s = YOUNGS_MOD_S*AREA/TH_S;
b_s = 0;                        % Assume no damping in the shell material
TH_S = 0.025;                   % Thickness of shell [m]

% Minor preliminary calculations
m_s = AREA * TH_S               %Mass of shell


%% Lining
% Thickness of lining
min_th = 0;
max_th = 0.014;
dth = (max_th - min_th)/RES;
th = max_th;                    % Start with maximum thickness 

% Other parameters 
v_l = AREA*th
m_l = DENSITY_L*v_l
k_l = YOUNGS_MOD_S*AREA/th;
b_l = DAMPING_RATIO_L*2*sqrt(k_l*m_l);


