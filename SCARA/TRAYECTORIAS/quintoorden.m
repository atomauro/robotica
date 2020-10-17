clc
clear all
t1=input("Posici�n inicial")
t2=input("Posici�n Final")
t11=input("Velocidad inicial")
t22=input("Velocidad Final")
t111=input("aceleraci�n inicial")
t222=input("Aceleraci�n final")
tf=input("Tiempo de recorrido")
    a0=t1;
    a1=t11;
    a2=t111/2;
    a3=(((20*t2)-20*t1)-(tf*(8*t22+12*t11))-tf^2*(3*t111-t222))/(2*tf^3);
    a4=((30*t1)-(30*t2)+(tf*(14*t22+16*t11))+(tf^2*(3*t111-2*t222)))/(2*tf^4);
    a5= ((12*t2)-(12*t1)-(tf*(6*t22+6*t11))-(tf^2*(t111-t222)))/(2*tf^5);
    
    syms t
    
    pos= a0+(a1*t)+(a2*(t^2))+(a3*(t^3))+a4*t^4+a5*t^5;
    vel= a1+(2*a2*t)+(3*a3*(t^2))+4*a4*t^3+5*a5*t^4;
    ace= 2*a2+(6*a3*t)+12*a4*t^2+20*a5*t^3;
    
    subplot(1,3,1)
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