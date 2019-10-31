clear all;
close all;
clc;

%f = input('enter freq')
%fs = input('enter sampling freq.')   %fs >= 2*f
f = 5
fs = 50
ts = 1/fs

t = 0:ts:0.5
%ts = 0:10:1000

x = sin(2*pi*f*t)
subplot(2,1,1)
plot(t,x)

hold on 
plot(t,x,'*')


%%Aliasing effect- distortion increases with decrease in sampling frequency
fs = 12.5
ts = 1/fs

t1 = 0:ts:0.5
%ts = 0:10:1000

y = sin(2*pi*f*t1)
subplot(2,1,2)
plot(t1,y)

hold on 
plot(t1,y,'*')