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


toughness1=trapz(Mat1)
toughness2=trapz(Mat2)
toughness3=trapz(Mat3)
toughness4=trapz(Mat4)
toughness5=trapz(Mat5)


%C
Value1=.2;
Value2=.5;
Value3=.7;
n1=length(Strain1);
D1=inf;
D2=inf;
D3=inf;
for i=1:n1
    temp1=abs(Strain1(i)-Value1);
    if temp1<D1
        D1=temp1;
        x1=i;
    end
    temp2=abs(Strain1(i)-Value2);
    if temp2<D2
        D2=temp2;
        x2=i;
    end
    temp3=abs(Strain1(i)-Value3);
    if temp3<D3
        D3=temp3;
        x3=i;
    end
end
h1=(Strain1(x1+2)-Strain1(x1-2))/5;
h2=(Strain1(x2+2)-Strain1(x2-2))/5;
h3=(Strain1(x3+2)-Strain1(x3-2))/5;
Young1_Value1=(-Mat1(x1+2)+8*Mat1(x1+1)-8*Mat1(x1-1)+Mat1(x1-2))/(12*h1);
Young1_Value2=(-Mat1(x2+2)+8*Mat1(x2+1)-8*Mat1(x2-1)+Mat1(x2-2))/(12*h2);
Young1_Value3=(-Mat1(x3+2)+8*Mat1(x3+1)-8*Mat1(x3-1)+Mat1(x3-2))/(12*h3);


%D
