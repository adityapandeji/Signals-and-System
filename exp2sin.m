%NAMe:Pande Aditya
%Roll No: 22251
%Date:
%Title:plotting continous time graphs of Sine signals

clc;
clear all;
close all;

A =5;
F=100;%frequ
Fs=4000;%sampling frequ
dt=1/Fs;
duration = 0.1;

t = 0:dt:duration ; %time axis
x = A*sin(2*pi*F*t);
subplot(3,2,1);
plot(t,x);
xlabel('time ->');
ylabel('amplitude ->');
title('CT sin(200*pi*t)');


t1=0:dt:duration ;
x1=A*sin(2*pi*F*t + pi/6);
subplot(3,2,3);
plot(t1,x1);
xlabel('time ->');
ylabel('amplitude');
title('CT sin(200*pi*t + pi/6');

t2=0:dt:duration;
x2=A*sin(2*pi*F*t - pi/6);
subplot(3,2,5);
plot(t2,x2);
xlabel('time ->');
ylabel('amplitude ->');
title('CT sin(200*pi*t - pi/6');


Fsd=400;%sampling frequ
dtd=1/Fsd;
td =0:dtd:duration ;
xd = A*sin(2*pi*F*td);
subplot(3,2,2);
stem(td,xd);
xlabel('time ->');
ylabel('amplitude ->');
title('DT sin(200*pi*t) discrete');

xd1 = A*sin(2*pi*F*td + pi/6);
subplot(3,2,4);
stem(td,xd1);
xlabel('time ->');
ylabel('amplitude ->');
title('DT sin(200*pi*t + pi/6) discrete');

xd2 = A*sin(2*pi*F*td - pi/6);
subplot(3,2,6);
stem(td,xd2);
xlabel('time ->');
ylabel('amplitude ->');
title('DT sin(200*pi*t - pi/6) discrete');














