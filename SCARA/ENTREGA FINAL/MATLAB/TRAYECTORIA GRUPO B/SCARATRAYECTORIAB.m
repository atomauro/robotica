clear all;
close all;
clc;
%%
%Linea 1
NL1=8;%numero de puntos de la linea 1
yL1=linspace(173.93,173.93,NL1);
xL1=linspace(-83.44,66.56,NL1);

%circulo 1
NC1=6;%numero de puntos del circulo 1
Theta1=linspace(10,70,NC1);
yC1=71.41*cosd(Theta1)+102.52;
xC1=71.41*sind(Theta1)+66.56;

%circulo 2
NC2=6;%numero de puntos del circulo 2
Theta2=linspace(240,190,NC2);
yC2=71.41*cosd(Theta2)+126.94+71.41*sind(20);
xC2=71.41*sind(Theta2)+133.67+71.41*cosd(20);

%linea 2
NL2=4;%numero de puntos de la linea 3
yL2=linspace(79.96,79.96,NL2);
xL2=linspace(200.76,250.76,NL2);

%linea 3
NL3=6;%numero de puntos de la linea 3
yL3=linspace(89.96,189.96,NL3);
xL3=linspace(250.76,250.76,NL3);

%circulo 3
NC3=5;%numero de puntos del circulo 3
Theta3=linspace(80,30,NC3);
yC3=42.84*cosd(Theta3)+189.96;
xC3=42.84*sind(Theta3)+207.92;

%linea 4
NL4=4;%numero de puntos de la linea 3
yL4=linspace(230.22,230.22+60*sind(20),NL4);
xL4=linspace(222.57,222.57-60*cosd(20),NL4);

%circulo 4
NC4=5;%numero de puntos del circulo 4
Theta4=linspace(210,260,NC4);
yC4=42.84*cosd(Theta4)+250.74+42.84*cosd(20);
xC4=42.84*sind(Theta4)+166.19+42.84*sind(20);

%linea 5
NL5=4;%numero de puntos de la linea 3
yL5=linspace(291,341,NL5);
xL5=linspace(138,138,NL5);

Xoriginal=[xL1 xC1 xC2 xL2 xL3 xC3 xL4 xC4 xL5];
Yoriginal=[yL1 yC1 yC2 yL2 yL3 yC3 yL4 yC4 yL5];

% XL=[xL1];
% YL=[yL1];
% 
% XD=[xC1 xC2 xL2 xL3 xC3 xL4 xC4 xL5];
% YD=[yC1 yC2 yL2 yL3 yC3 yL4 yC4 yL5];

X=fliplr(Xoriginal)
Y=fliplr(Yoriginal)

stem(X,Y,'LineStyle','none')
hold on
%plot(X,Y)
stem(Xoriginal,Yoriginal,'LineStyle','none')
axis([-400 400 -400 400])
hold off


%http://www.ni.com/example/29178/en/
%TRAYECTORIA HACIA ADELANTE
Xadelante=X
Yadelante=Y

%TRAYECTORIA HACIA ATRAS
Xatras=fliplr(Xadelante)
Yatras=fliplr(Yadelante)
