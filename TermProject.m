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
xlabel('Strain(%)')
ylabel('Stress(MPa)')
title('Stress vs. Strain')




%B
toughness1=trapz(Mat1);
toughness2=trapz(Mat2);
toughness3=trapz(Mat3);
toughness4=trapz(Mat4);
toughness5=trapz(Mat5);




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


n2=length(Strain2);
D1=inf;
D2=inf;
D3=inf;
for i=1:n2
    temp1=abs(Strain2(i)-Value1);
    if temp1<D1
        D1=temp1;
        x1=i;
    end
    temp2=abs(Strain2(i)-Value2);
    if temp2<D2
        D2=temp2;
        x2=i;
    end
    temp3=abs(Strain2(i)-Value3);
    if temp3<D3
        D3=temp3;
        x3=i;
    end
end
h1=(Strain2(x1+2)-Strain2(x1-2))/5;
h2=(Strain2(x2+2)-Strain2(x2-2))/5;
h3=(Strain2(x3+2)-Strain2(x3-2))/5;
Young2_Value1=(-Mat2(x1+2)+8*Mat2(x1+1)-8*Mat2(x1-1)+Mat2(x1-2))/(12*h1);
Young2_Value2=(-Mat2(x2+2)+8*Mat2(x2+1)-8*Mat2(x2-1)+Mat2(x2-2))/(12*h2);
Young2_Value3=(-Mat2(x3+2)+8*Mat2(x3+1)-8*Mat2(x3-1)+Mat2(x3-2))/(12*h3);


n3=length(Strain3);
D1=inf;
D2=inf;
D3=inf;
for i=1:n3
    temp1=abs(Strain3(i)-Value1);
    if temp1<D1
        D1=temp1;
        x1=i;
    end
    temp2=abs(Strain3(i)-Value2);
    if temp2<D2
        D2=temp2;
        x2=i;
    end
    temp3=abs(Strain3(i)-Value3);
    if temp3<D3
        D3=temp3;
        x3=i;
    end
end
h1=(Strain3(x1+2)-Strain3(x1-2))/5;
h2=(Strain3(x2+2)-Strain3(x2-2))/5;
h3=(Strain3(x3+2)-Strain3(x3-2))/5;
Young3_Value1=(-Mat3(x1+2)+8*Mat3(x1+1)-8*Mat3(x1-1)+Mat3(x1-2))/(12*h1);
Young3_Value2=(-Mat3(x2+2)+8*Mat3(x2+1)-8*Mat3(x2-1)+Mat3(x2-2))/(12*h2);
Young3_Value3=(-Mat3(x3+2)+8*Mat3(x3+1)-8*Mat3(x3-1)+Mat3(x3-2))/(12*h3);



n4=length(Strain4);
D1=inf;
D2=inf;
D3=inf;
for i=1:n4
    temp1=abs(Strain4(i)-Value1);
    if temp1<D1
        D1=temp1;
        x1=i;
    end
    temp2=abs(Strain4(i)-Value2);
    if temp2<D2
        D2=temp2;
        x2=i;
    end
    temp3=abs(Strain4(i)-Value3);
    if temp3<D3
        D3=temp3;
        x3=i;
    end
end
h1=(Strain4(x1+2)-Strain4(x1-2))/5;
h2=(Strain4(x2+2)-Strain4(x2-2))/5;
h3=(Strain4(x3+2)-Strain4(x3-2))/5;
Young4_Value1=(-Mat4(x1+2)+8*Mat4(x1+1)-8*Mat4(x1-1)+Mat4(x1-2))/(12*h1);
Young4_Value2=(-Mat4(x2+2)+8*Mat4(x2+1)-8*Mat4(x2-1)+Mat4(x2-2))/(12*h2);
Young4_Value3=(-Mat4(x3+2)+8*Mat4(x3+1)-8*Mat4(x3-1)+Mat4(x3-2))/(12*h3);


Value1=.2;
Value2=.5;
Value3=.7;
n5=length(Strain5);
D1=inf;
D2=inf;
D3=inf;
for i=1:n5
    temp1=abs(Strain5(i)-Value1);
    if temp1<D1
        D1=temp1;
        x1=i;
    end
    temp2=abs(Strain5(i)-Value2);
    if temp2<D2
        D2=temp2;
        x2=i;
    end
    temp3=abs(Strain5(i)-Value3);
    if temp3<D3
        D3=temp3;
        x3=i;
    end
end
h1=(Strain5(x1+2)-Strain5(x1-2))/5;
h2=(Strain5(x2+2)-Strain5(x2-2))/5;
h3=(Strain5(x3+2)-Strain5(x3-2))/5;
Young5_Value1=(-Mat5(x1+2)+8*Mat5(x1+1)-8*Mat5(x1-1)+Mat5(x1-2))/(12*h1);
Young5_Value2=(-Mat5(x2+2)+8*Mat5(x2+1)-8*Mat5(x2-1)+Mat5(x2-2))/(12*h2);
Young5_Value3=(-Mat5(x3+2)+8*Mat5(x3+1)-8*Mat5(x3-1)+Mat5(x3-2))/(12*h3);




%D
max=0;
for i=1:length(Mat1)
    if Mat1(i)>max
        max=Mat1(i);
        loc=i;
    end
end
x1=1+Strain1(1:loc);
y1=Mat1(1:loc);
max=0;
for i=1:length(Mat2)
    if Mat2(i)>max
        max=Mat2(i);
        loc=i;
    end
end
x2=1+Strain2(1:loc);
y2=Mat2(1:loc);
max=0;
for i=1:length(Mat3)
    if Mat3(i)>max
        max=Mat3(i);
        loc=i;
    end
end
x3=1+Strain3(1:loc);
y3=Mat3(1:loc);
max=0;
for i=1:length(Mat4)
    if Mat4(i)>max
        max=Mat4(i);
        loc=i;
    end
end
x4=1+Strain4(1:loc);
y4=Mat4(1:loc);
max=0;
for i=1:length(Mat5)
    if Mat5(i)>max
        max=Mat5(i);
        loc=i;
    end
end
x5=1+Strain5(1:loc);
y5=Mat5(1:loc);

%ogden model
[cons1]=fminsearch(@error,[1,1],[],x1,y1);
[cons2]=fminsearch(@error,[1,1],[],x2,y2);
[cons3]=fminsearch(@error,[1,1],[],x3,y3);
[cons4]=fminsearch(@error,[1,1],[],x4,y4);
[cons5]=fminsearch(@error,[1,1],[],x5,y5);

sig_model1=((2.*cons1(1))/cons1(2)).*(x1.^cons1(2)-x1.^-(cons1(2)/2));
sigbar1=sum(y1)/length(y1);
st=sum((y1-sigbar1).^2);
sr=sum((y1-sig_model1).^2);
coefogr1=(st-sr)/st;

sig_model2=((2.*cons1(1))/cons1(2)).*(x2.^cons1(2)-x2.^-(cons1(2)/2));
sigbar2=sum(y2)/length(y2);
st=sum((y2-sigbar2).^2);
sr=sum((y2-sig_model2).^2);
coefogr2=(st-sr)/st;

sig_model3=((2.*cons1(1))/cons1(2)).*(x3.^cons1(2)-x3.^-(cons1(2)/2));
sigbar3=sum(y3)/length(y3);
st=sum((y3-sigbar3).^2);
sr=sum((y3-sig_model3).^2);
coefogr3=(st-sr)/st;

sig_model4=((2.*cons1(1))/cons1(2)).*(x4.^cons1(2)-x4.^-(cons1(2)/2));
sigbar4=sum(y4)/length(y4);
st=sum((y4-sigbar4).^2);
sr=sum((y4-sig_model4).^2);
coefogr4=(st-sr)/st;

sig_model5=((2.*cons1(1))/cons1(2)).*(x5.^cons1(2)-x5.^-(cons1(2)/2));
sigbar5=sum(y5)/length(y5);
st=sum((y5-sigbar5).^2);
sr=sum((y5-sig_model5).^2);
coefogr5=(st-sr)/st;

%Mooney-Rivlin model

[Mooney_c1]=fminsearch(@error2,[1,1],[],x1,y1);
[Mooney_c2]=fminsearch(@error2,[1,1],[],x2,y2);
[Mooney_c3]=fminsearch(@error2,[1,1],[],x3,y3);
[Mooney_c4]=fminsearch(@error2,[1,1],[],x4,y4);
[Mooney_c5]=fminsearch(@error2,[1,1],[],x5,y5);

Mooney_model_1=(2.*Mooney_c1(1).*(x1.^2-(1./x1)))+(2.*Mooney_c1(2).*(x1-(1./x1.^2)));
Mooney_model_2=(2.*Mooney_c2(1).*(x2.^2-(1./x2)))+(2.*Mooney_c2(2).*(x2-(1./x2.^2)));
Mooney_model_3=(2.*Mooney_c3(1).*(x3.^2-(1./x3)))+(2.*Mooney_c3(2).*(x3-(1./x3.^2)));
Mooney_model_4=(2.*Mooney_c4(1).*(x4.^2-(1./x4)))+(2.*Mooney_c4(2).*(x4-(1./x4.^2)));
Mooney_model_5=(2.*Mooney_c5(1).*(x5.^2-(1./x5)))+(2.*Mooney_c5(2).*(x5-(1./x5.^2)));

Mooneybar=sum(y1)/length(y1);
st=sum((y1-Mooneybar).^2);
sr=sum((y1-Mooney_model_1).^2);
Mooney_r1=(st-sr)/st;

Mooneybar=sum(y2)/length(y2);
st=sum((y2-Mooneybar).^2);
sr=sum((y2-Mooney_model_2).^2);
Mooney_r2=(st-sr)/st;

Mooneybar=sum(y3)/length(y3);
st=sum((y3-Mooneybar).^2);
sr=sum((y3-Mooney_model_3).^2);
Mooney_r3=(st-sr)/st;

Mooneybar=sum(y4)/length(y4);
st=sum((y4-Mooneybar).^2);
sr=sum((y4-Mooney_model_4).^2);
Mooney_r4=(st-sr)/st;

Mooneybar=sum(y5)/length(y5);
st=sum((y5-Mooneybar).^2);
sr=sum((y5-Mooney_model_5).^2);
Mooney_r5=(st-sr)/st;


function [E]= error(a,x,y)
 y_model1=(2*a(1)/a(2)).*(x.^a(2)-x.^(-a(2)/2));
 E=sum((y-y_model1).^2);
end

function [E]= error2(a,x,y)
y_model=(2*a(1)*(x.^2-(1/x)))+(2*a(2)*(x-(1/x.^2)));
E=sum(sum((y-y_model).^2));
end
