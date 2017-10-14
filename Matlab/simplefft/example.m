%%Example
% fast fourier transform:
% Author : Sayyed Mohsen Vazirizade, SUT, 2016
% s.m.vazirizade@gmail.com
%%
clc;clear;close all
% step determines the interval between each sample, or step=1/sampling rate
step=0.001;
% T determines the end time of the signal
T=5
%
t=[0:step:T]';
% signal
x=cos(4*2*pi.*t)+1/2*cos(20*2*pi.*t);
%%
% plotting the signal in Time domain
figure
plot(t,x)
[Freq, Amp] = simplefft( x,step );
xlabel ('Time');ylabel ('Magnitude'),ylim(2*[min(x),max(x)])
% plotting the signal in Frequency domain
figure
plot(Freq, Amp)
xlabel ('Frequency');ylabel ('Magnitude')
%%
%Transforming the spectrum to the singal again. 
phi=rand(length(Freq),1)*0 ;         % no phase difference
Signal=zeros(1,length(t));
for i = 1:length(t)
Signal(i)=sum(Amp .* cos(2*pi*Freq.*t(i)+phi));
end
% plotting the signal in time domain
figure
plot(t, Signal)
xlabel ('Time');ylabel ('Magnitude'),ylim(2*[min(x),max(x)])