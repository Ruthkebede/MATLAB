
%Nov-22-2019
%Ruth Kebede and Luna Bakhati
%To determine cell growth based on the doubling time

clc
close all
clear

%cells seeded
num_cells=input('Enter the number of seeds at the beginning:');

%doubling time[hr]
doub_time=input('Enter doubling time[hrs]:');

%diameter of dish
dia_dish=input('Enter diameter of petri dish:');

%convert diamerer of dish from [in] to [micrometer]
dia_dish_2=((dia_dish*2.54)*10000);

radius= (dia_dish_2)/2;           %[micrometer]

%Area of petridish [micrometer^2]
Area_pd=(pi*(radius)^2);

% Average diameter of cell[micrometer]
Ave_dia=10;

%cell area[micrometer^2]
cell_area=(pi*(Ave_dia/2)^2);

%max number of cells
N_max=(Area_pd/cell_area);

%time[hours]
t=1:1:2000;
      
for a=0:2000                       
    if a==doub_time     
    tot_pop=0.9*(num_cells*2.^(t/doub_time));  %final population with 10 percent reduction every doubling time.
    doub_time1=doub_time+doub_time;     
    end      
end

maximum_time=(log(N_max)/num_cells*doub_time)/log(2); %maximum time to reach the carrying capacity

cell_dens=tot_pop/Area_pd;     %cell density per sq micrometer

N_max=Area_pd/cell_area;          %maximum number of cells

x=[maximum_time,maximum_time];

y=[0,max(cell_dens)];

%plot
figure
plot(t,cell_dens,'r')
hold on
plot(x,y,'k')
title('cell density with respect to time')   %create title
%label
xlabel('time[hours]')
ylabel('cell density[cells/area]')
legend('cell density with respect to time','Total cells the petridish holds')
grid
hold off

if t<maximum_time
    disp('error')
else
end
    





