% Description: This is a simple code that simulates the torsion springs
% Author: Jon Meikle
% Date: 1/1/2023
% Software IDE: Written in Octave
%%%%%%%%%

close all;
clear all;
SpringMaxAngle=120;     %max deflection angle
SpringMaxTorque=40; %lb-ins
KValue=SpringMaxTorque/SpringMaxAngle;

Angle=[0:1:120];
Motor1Torque=(SpringMaxAngle-Angle)*KValue;
Motor2Torque=-Angle*KValue;


Torque=Motor1Torque+Motor2Torque;   
plot(Angle-60,Torque)
grid on;
xlabel("Angle (deg)");
ylabel("Torque (in-lbs)");
title("Torsion Springs");