clear all; clc; close all

%% Load Data
HeatCharts;
Temperatures;
TemperaturesMore;

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%         TEMPERATURES        %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%%%%%%%%%%%%%%%% PC_SS12 %%%%%%%%%%%%%%%%%
%%%%%%%%%% Nominal case %%%%%%%%%%
% plot4Temp(time, PC_SS12_EB, PC_SS12_IR_TEL_CCD, PC_SS12_PLD1, PC_SS12_PLD2,...
%                'EBox', 'CCD', 'PLD1','PLD2')
plot3Temp(time, PC_SS12_EB, PC_SS12_PLD1, PC_SS12_PLD2,...
    'EBox', 'PLD1','PLD2')
plot1Temp(time, PC_SS12_IR_TEL_CCD,...
    'CCD')

plot4Temp(time, PC_SS12_EB_Body, PC_SS12_IR_TEL_LENS,PC_SS12_IR_TEL_STR,PC_SS12_SP,...
    'Panels', 'Lens', 'Tel. Ass.','Solar Panels')

%%%%%%%%%% Survival case %%%%%%%%%%
plot4Temp(time, PC_SS12_EB_Surv, PC_SS12_IR_TEL_CCD_Surv, PC_SS12_PLD1_Surv, PC_SS12_PLD2_Surv,...
    'EBox', 'CCD', 'PLD1','PLD2')

%%%%%%%%%% Cold Case %%%%%%%%%%
plot4Temp(time, PC_SS12_EB_CC, PC_SS12_IR_TEL_CCD_CC, PC_SS12_PLD1_CC, PC_SS12_PLD2_CC,...
    'EBox', 'CCD', 'PLD1','PLD2')

%%%%%%%%%% SS6 %%%%%%%%%%
plot4Temp(time, PC_SS6_EB, PC_SS6_IR_TEL_CCD, PC_SS6_PLD1, PC_SS6_PLD2,...
                'EBox', 'CCD', 'PLD1','PLD2')
            
%% %%%%%%%%%%%%%%%%% AC_SS12 %%%%%%%%%%%%%%%%%
%%%%%%%%%% Nominal case %%%%%%%%%%
% plot4Temp(time, AC_SS12_EB, AC_SS12_IR_TEL_CCD, AC_SS12_PLD1, AC_SS12_PLD2,...
%                'EBox', 'CCD', 'PLD1','PLD2')
plot3Temp(time, AC_SS12_EB, AC_SS12_PLD1, AC_SS12_PLD2,...
    'EBox', 'PLD1','PLD2')
plot1Temp(time, AC_SS12_IR_TEL_CCD,...
    'CCD')

plot4Temp(time, AC_SS12_EB_Body, AC_SS12_IR_TEL_LENS,AC_SS12_IR_TEL_STR,AC_SS12_SP,...
    'Panels', 'Lens', 'Tel. Ass.','Solar Panels')

%%%%%%%%%% Survival case %%%%%%%%%%
plot4Temp(time, AC_SS12_EB_Surv, AC_SS12_IR_TEL_CCD_Surv, AC_SS12_PLD1_Surv, AC_SS12_PLD2_Surv,...
    'EBox', 'CCD', 'PLD1','PLD2')

%%%%%%%%%% Cold Case %%%%%%%%%%
plot4Temp(time, AC_SS12_EB_CC, AC_SS12_IR_TEL_CCD_CC, AC_SS12_PLD1_CC, AC_SS12_PLD2_CC,...
    'EBox', 'CCD', 'PLD1','PLD2')

%%%%%%%%%% SS6 %%%%%%%%%%
plot4Temp(time, AC_SS6_EB, AC_SS6_IR_TEL_CCD, AC_SS6_PLD1, AC_SS6_PLD2,...
                'EBox', 'CCD', 'PLD1','PLD2')
            
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%         HEAT CHART          %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%%%%%%%%%%%%%%%% PC_SS12 %%%%%%%%%%%%%%%%%
plot7HC(time, PC_SS12_CCD_RAD,  PC_SS12_EBox_Plate2_contactzone, PC_SS12_EBox_RAD,...
                PC_SS12_MLI_to_STR, PC_SS12_SP_STR, PC_SS12_STR_to_IR_STR, PC_SS12_STR_to_RAD,...
                'CCD - Rad.', 'EBox - Plate', ' EBox - Rad.', 'MLI - Panels', 'SP - Panels',...
                'Panels - Tel. Ass.', 'Panels - Rad.')

%% %%%%%%%%%%%%%%%%% AC_SS12 %%%%%%%%%%%%%%%%%
plot3HC(time, AC_SS12_EBox_Plate2,  AC_SS12_EBox_RAD, AC_SS12_STR_to_IR_STR,...
                'EBox - Plate', ' EBox - Rad.', 'Panels - Tel. Ass.')

%% FUNCTIONS
function plot1Temp(time,temp1,a)
figure()
hold on
box on
grid on
grid minor
plot(time, temp1, '-ok','Linewidth',1.5)
xlabel('Time [s]')
ylabel('Temperature [K]')
legend(a,'Location','northeast','NumColumns',2)
xlim([0 max(time)])
set(gca,'FontSize',18)
end

function plot2Temp(time,temp1, temp2, a, b)
figure()
hold on
box on
grid on
grid minor
plot(time, temp1, '-ok','Linewidth',1.5)
plot(time, temp2, '-.xk','Linewidth',1.5)
xlabel('Time [s]')
ylabel('Temperature [K]')
legend(a,b,'Location','northeast','NumColumns',2)
xlim([0 max(time)])
set(gca,'FontSize',18)
end

function plot3Temp(time,temp1, temp2, temp3,a, b,c)
figure()
hold on
box on
grid on
grid minor
plot(time, temp1, '-ok','Linewidth',1.5)
plot(time, temp2, '-.xk','Linewidth',1.5)
plot(time, temp3, '--^k','Linewidth',1.5)
xlabel('Time [s]')
ylabel('Temperature [K]')
legend(a,b,c,'Location','northeast','NumColumns',2)
xlim([0 max(time)])
set(gca,'FontSize',18)
end

function plot4Temp(time,temp1, temp2,  temp3,  temp4,a,b,c,d)
figure()
hold on
box on
grid on
grid minor
plot(time, temp1, '-ok','Linewidth',1.5)
plot(time, temp2, '-.xk','Linewidth',1.5)
plot(time, temp3, '--^k','Linewidth',1.5)
plot(time, temp4, ':<k','Linewidth',1.5)
xlabel('Time [s]')
ylabel('Temperature [K]')
legend(a,b,c,d,'Location','northeast','NumColumns',2)
xlim([0 max(time)])
set(gca,'FontSize',18)
end

function plot6Temp(time,temp1, temp2,  temp3,  temp4,  temp5,  temp6,a,b,c,d,e,f)
figure()
hold on
box on
grid on
grid minor
plot(time, temp1, '-ok','Linewidth',1.5)
plot(time, temp2, '-.xk','Linewidth',1.5)
plot(time, temp3, '--^k','Linewidth',1.5)
plot(time, temp4, ':<k','Linewidth',1.5)
plot(time, temp5, '-dk','Linewidth',1.5)
plot(time, temp6, ':sk','Linewidth',1.5)
xlabel('Time [s]')
ylabel('Temperature [K]')
legend(a,b,c,d,e,f,'Location','northeast','NumColumns',2)
xlim([0 max(time)])
set(gca,'FontSize',18)
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function plot7HC(time,temp1, temp2,  temp3,  temp4,  temp5,  temp6, temp7,a,b,c,d,e,f,g)
figure()
hold on
box on
grid on
grid minor
plot(time, temp1, '-ok','Linewidth',1.5)
plot(time, temp2, '-.xk','Linewidth',1.5)
plot(time, temp3, '--^k','Linewidth',1.5)
plot(time, temp4, ':<k','Linewidth',1.5)
plot(time, temp5, '-dk','Linewidth',1.5)
plot(time, temp6, ':sk','Linewidth',1.5)
plot(time, temp7, '--+k','Linewidth',1.5)
xlabel('Time [s]')
ylabel('Power [W]')
legend(a,b,c,d,e,f,g,'Location','northeast','NumColumns',2)
xlim([0 max(time)])
set(gca,'FontSize',18)
end

function plot1HC(time,temp1,a)
figure()
hold on
box on
grid on
grid minor
plot(time, temp1, '-k','Linewidth',1.5)
xlabel('Time [s]')
ylabel('Power [W]')
legend(a,'Location','northeast','NumColumns',2)
xlim([0 max(time)])
set(gca,'FontSize',18)
end

function plot3HC(time,temp1,temp2,temp3,a,b,c)
figure()
hold on
box on
grid on
grid minor
plot(time, temp1, '-ok','Linewidth',1.5)
plot(time, temp2, '-.xk','Linewidth',1.5)
plot(time, temp3, '--^k','Linewidth',1.5)
xlabel('Time [s]')
ylabel('Power [W]')
legend(a,b,c,'Location','northeast','NumColumns',2)
xlim([0 max(time)])
set(gca,'FontSize',18)
end

















%
% function plotTemp(time,temp1, temp2,  temp3,  temp4,  temp5,  temp6, a, b, c, d ,e, f)
% figure()
% hold on
% box on
% grid on
% grid minor
%
% plot(time, temp1, '-k','Linewidth',1.5)
% plot(time, temp2, '--k','Linewidth',1.5)
% plot(time, temp3, '-.k','Linewidth',1.5)
% plot(time, temp4, '-ok','Linewidth',1.5)
% plot(time, temp5, '-xk','Linewidth',1.5)
% plot(time, temp6, ':k','Linewidth',1.5)
%
% xlabel('Time [s]')
% ylabel('Temperature [K]')
% templim = [ temp1; temp2;temp3; temp4; temp5; temp6]
% %min(templim)
% %max(templim)
% axis([ 0 max(time) min(templim)*1.1 max(templim)*1.1])
% lgd = [a, b, c, d, e, f]
% legend(lgd,'Location','northeast','NumColumns',2)
% set(gca,'FontSize',18)
% hold off
% end