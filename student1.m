clc
clear
close all
choose= menu('choose a fluid','abc','fgh','mno');
To=input('enter initial temp');%[c]
t=input('enter time');%[min]
TA= input('enter the amnient temp');%[c]
K=[0.01 0.03 0.02];
e= 2.71;
T=TA+(To-TA)*e.^-K.*t;
fprintf('%s had a temp %0.1f deg cel after %1.0f minutes',choose(1),T,t)