clear;
clc;
close all;
fclose all;

Strain1=xlsread('01.xlsx','sheet1','A:A');
Mat1=xlsread('01.xlsx','sheet1','B:B');

Strain2=xlsread('01.xlsx','sheet2','A:A');
Mat2=xlsread('01.xlsx','sheet2','B:B');

Strain3=xlsread('01.xlsx','sheet3','A:A');
Mat3=xlsread('01.xlsx','sheet3','B:B');

Strain4=xlsread('01.xlsx','sheet4','A:A');
Mat4=xlsread('01.xlsx','sheet4','B:B');

Strain5=xlsread('01.xlsx','sheet5','A:A');
Mat5=xlsread('01.xlsx','sheet5','B:B');

%A
plot(Strain1,Mat1)
hold on
plot(Strain2,Mat2)
plot(Strain3,Mat3)
plot(Strain4,Mat4)
plot(Strain5,Mat5)
legend('Sheet1','Sheet2','Sheet3','Sheet4','Sheet5','Location','southeast')
xlabel('Strain')
ylabel('Stress')
title('Stress vs. Strain')

%B


%C


%D
