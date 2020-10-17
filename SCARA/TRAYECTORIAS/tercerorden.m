clc
clear all

theta1=input("Posici�n Inicial")
theta2=input("Posici�n Final")
tf=input("Tiempo de recorrido")
    
    a0= theta1;
    a1=0;
    a2=(3/(tf^2))*(theta2-theta1);
    a3= (-(2/(tf^3)))*(theta2-theta1);
    syms t
    
    pos=a0+(a1*t)+(a2*(t^2))+(a3*(t^3));
    vel= a1+(2*a2*t)+(3*a3*(t^2));
    ace= 2*a2+(6*a3*t);
    
    subplot(1,3,1);
    fplot(pos,[0,tf])
    grid
    title('Posicion')
    ylabel('Grados')
    xlabel('Tiempo')
    subplot(1,3,2);
    fplot(vel,[0,tf])
    grid
    title('Velocidad')
    ylabel('Grados')
    xlabel('Tiempo')
    subplot(1,3,3);
    fplot(ace,[0,tf])
    grid
    title('Aceleracion')
    ylabel('Grados')
    xlabel('Tiempo')