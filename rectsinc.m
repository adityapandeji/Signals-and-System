%NAME:Pande Aditya
%Roll No: 22251
%Date:
%Title:Plotting continous and discrete time graphs of Rectangular and Sinc Function

clc;
clear all;
close all;

dt = 0.001;
duration = 5; % seconds
t1 = (-5:1:-2); % negative time duration
t2 = (-2:1:2); % positive time duration
t3 = (2:1:5);
a=zeros(1, length(t1));
b=ones(1, length(t2));
c=zeros(1, length(t3));
x = [a b c];
t = [t1 t2 t3];
subplot(2,2,1);
plot(t, x);
grid on;
axis([-6 6 -0.5 1.5])
xlabel('Time ----->');
ylabel('Amplitude ----->')
title('CT Rectangular Function')

duration = 5; % seconds
t1 = (-5:1:-2-dt); % negative time duration
t2 = (-2:1:2-dt); % positive time duration
t3 = (2:1:5);
a=zeros(1, length(t1));
b=ones(1, length(t2));
c=zeros(1, length(t3));
x = [a b c];
t = [t1 t2 t3];
subplot(2,2,2);
stem(t, x);
grid on;
axis([-6 6 -0.5 1.5])
xlabel('Time ----->');
ylabel('Amplitude ----->')
title('DT Rectangular Function')



dt=0.001;
duration = 5;

t = -5:dt:5 ; %time axis
x = sin(pi*t);
y= pi* t;
z=x./y
subplot(2,2,3);
plot(t,z);
grid on;
axis([-5.5 5.5 -0.5 1.2])
xlabel('Time ---->');
ylabel('Amplitude ---->');
title(['CT Sinc Function' ]);

t = -5:1:5 ; %time axis
x = sin(pi*t);
y= pi* t;
z=x./y
subplot(2,2,4);
stem(t,z);
grid on;
axis([-5.5 5.5 -0.5 1.2])
xlabel('Time --->');
ylabel('Amplitude ---->');
title(['DT Sinc Function' ]);

