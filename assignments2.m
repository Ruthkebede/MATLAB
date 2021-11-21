%ruth kebede      ENGR 1250-006   2019-03-06
%Problem statement: how long in [sec] it will take a motor to rise a load

clear
clc

%input variables
pin= 100%[W]
e= 0.6 %[-]
M= 100 %[kg]
h=5 %[m]
g=9.8 %[m/s^2]

%equations
pout= e*pin %[W]
E= M*g*h %[J]
t= E/pout %[sec]