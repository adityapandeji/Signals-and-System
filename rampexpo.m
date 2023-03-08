%NAME:Pande Aditya
%Roll No: 22251
%Date:
%Title:plotting continous time graphs

clc;
clear all;
close all;


K =1;
dt=0.001;
duration = 5;
a=0.35;
t = 0:dt:duration ; %time axis
x = K *exp(-a*t);
subplot(2,2,1);
plot(t,x);
grid on;
axis([-1 5.5 -0.5 1.2])
xlabel('time ->');
ylabel('amplitude ->');
title(['CT exponential signal k*e^(-at) for k and a =' num2str(K) 'and' num2str(a)]);



dt=0.001;
t1 = -5:dt:0-dt ; %time axis
t2 =0:dt:5;
a=zeros(1,length(t1));
b=t2;
t=[t1 t2];
x=[a b];

subplot(2,2,3);
plot(t,x);
grid on;
axis([-6 6 -6 6])
xlabel('time ->');
ylabel('amplitude ->');
title(['CT Unit Ramp Function' ]);


K =1;
dt=1;
duration = 5;
a=0.35;
t = 0:dt:duration ; %time axis
x = K *exp(-a*t);
subplot(2,2,2);
stem(t,x);
grid on;
axis([-1 5.5 -0.5 1.2])
xlabel('time ->');
ylabel('amplitude ->');
title(['DT exponential signal k*e^(-at) for k and a =' num2str(K) 'and' num2str(a)]);


dt=1;
t1 = -5:dt:0-dt ; %time axis
t2 =0:dt:5;
a=zeros(1,length(t1));
b=t2;
t=[t1 t2];
x=[a b];

subplot(2,2,4);
stem(t,x);
grid on;
axis([-6 6 -6 6])
xlabel('time ->');
ylabel('amplitude ->');
title(['DT Unit Ramp Function' ]);


