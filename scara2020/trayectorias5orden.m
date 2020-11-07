function [pos,vel,acel,t]=trayectorias5orden(pos0,posf,vel0,velf,acel0,acelf,tf)
a0=pos0;
a1=vel0;
a2=acel0/2;
a3=(20*posf-20*pos0-(8*velf+12*vel0)*tf-(3*acel0-acelf)*tf^2)/(2*tf^3);
a4=(30*pos0-30*posf+(14*velf+16*vel0)*tf+(3*acel0-2*acelf)*tf^2)/(2*tf^4);
a5=(12*posf-12*pos0-(6*velf+6*vel0)*tf+(3*acel0-2*acelf)*tf^2)/(2*tf^5);

t=0:0.001:tf;

pos=a0+a1*t+a2*t.^2+a3*t.^3+a4*t.^4+a5*t.^5;
vel=a1+2*a2*t+3*a3*t.^2+4*a4*t.^3+5*a5*t.^4;
acel=2*a2+6*a3*t+12*a4*t.^2+20*a5*t.^3;
end