clear all
clc
close all
%% Motor 1
%%Se genera trayectoria de 5to orden
[P,V,A,t]=trayectorias5orden(0,pi,0,0,0,0,90)
plot(t,P)
xlabel('Tiempo(s)')
ylabel('Posición (rad)')
title('Trayectoria suave de posición')
for i=1:size(t,2)
   Datos(i,1)=t(1,i);
   Datos(i,2)=P(1,i);
end
%%Se de define la planta con la que se va a trabajar
s=tf('s')
G=795.4625155/(s*(0.007323041444*s+1))
step(feedback(G,1))
tslc=0.4*0.0617
%%Tiempo de muestreo 
Ts=0.05*tslc
T=0.001
%%Discretización de la planta
z=tf('z',T)
Gz=c2d(G,T,'zoh')
s1 = 0.4127068416; r0 = 10.38642048; r1 = -17.56625987; r2 = 7.519921612
S=(1-z^-1)*(1+s1*z^-1)
R=r0+r1*z^-1+r2*z^-2
CGz=R*feedback((1/S)*Gz,R)
step(CGz)
zpk(CGz)
%%Prefiltro
prez=(1-1.691+0.724)/(z^2-1.691*z+0.724)
CGz_final=prez*CGz
step(CGz_final)
hold on
lsim(CGz_final,P)
%% Motor 2
[P1,V1,A1,t1]=trayectorias5orden(0,2*pi,0,0,0,0,70)
plot(t1,P1)
for i=1:size(t1,2)
   Datos1(i,1)=t1(1,i);
   Datos1(i,2)=P1(1,i);
end
Theta1=(out.simout.signals.values)'
Theta2=(out.simout1.signals.values)'