clc
clear
close all

[num,txt,raw] = xlsread('Photomac Data 2022-Rev1.xlsx');

%% Jan 1- Feb 10 (Train Data ) , Feb 11- Mar 2 (Test Data)
TURB_Train=num(1:3936,2);   %Turbidity
WT_Train=num(1:3936,5);  %Water Temperature
SC_Train=num(1:3936,4);  %Specific Conductance

TURB_Test=num(3937:end,2);   %Turbidity
WT_Test=num(3937:end,5);  %Water Temperature
SC_Test=num(3937:end,4);  %Specific Conductance

%% Preprocessing for NaN Data (Data InterPolation)
TURB_N_train=find(isnan(TURB_Train)==1);
WT_N_train=find(isnan(WT_Train)==1);
SC_N_train=find(isnan(SC_Train)==1);

TURB_N_test=find(isnan(TURB_Test)==1);
WT_N_test=find(isnan(WT_Test)==1);
SC_N_test=find(isnan(SC_Test)==1);

TURB_Train(TURB_N_train)=[4.3 4.2 4.3 4.4 4.6 4.9 4.7 4.3 4.1 3.7 3.5 3.8 4.3 4.1 3.8];   
WT_Train(WT_N_train)=[0.2 0.2 0.3 0.3 0.4 0.4 0.5 0.5 0.6 0.6 0.6 0.5 0.6 0.7 0.7]; 
SC_Train(SC_N_train)=[514 497 503 498 495 497 492 496 488 493 485 487 480 482 476]; 

%%  Final Data After Preprocessing

save DATA_Test TURB_Test WT_Test SC_Test
save DATA_Train TURB_Train WT_Train SC_Train
