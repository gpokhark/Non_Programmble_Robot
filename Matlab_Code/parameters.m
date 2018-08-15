clc
clear all
WheelRadius=0.035;
%     0.03
%     0.04]; % radius of wheel
TrackWidth=0.1; % track width of car

mu=0.5; % Coefficient of friction

 for ii = 1:1
    N = ii;
simOut{ii} = sim( 'XYSimulation' );

 end

simOut = sim( 'XYSimulation', 'SaveOutput', 'on' );
yout = simOut.get( 'yout' );
% X = simOut.get( 'X' );
% 
% [t,x] =sim( 'XYSimulation' );