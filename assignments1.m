%ruth kebede     ENGR1250-006       2019-03-06
%Problem Statement: #7 Determine Weight of Rod in Pounds-Force

clear
clc

%input variables
V=0.3 %[m^3]
sg=4.7 %[-]
g=1.25 %[m/s^2]
d=1000 %[kg/m^3]

%equations
do=sg*1000 %[kg/m^3]
M=do*V %[kg]
W=M*g %[N]

%conversions
W=W*0.225 %[lbf]