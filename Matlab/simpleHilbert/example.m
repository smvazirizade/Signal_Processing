%%Example
% fast fourier transform:
% Author : Sayyed Mohsen Vazirizade, SUT, 2016
% s.m.vazirizade@gmail.com
%%
clc;clear;
% step determines the interval between each sample, or step=1/sampling rate
step=0.01;
% T determines the end time of the signal
T=5
%
t=[0:step:T]';
% signal
x=cos(4*2*pi.*t);
% bins intervals in histogram
histinterval=0.02
%%
TMAF=simplehilbert(x,step)

% plotting the signal in Time domain
figure
plot(TMAF(:,1),TMAF(:,2))
xlabel ('Time');ylabel ('Magnitude'),ylim(2*[min(x),max(x)])


%%
%fiures
%plotting the singal in frequency domain, color bar indicates amplitude
  figure
  subplot(5,5,[1:4,6:9,11:14])
  scatter(TMAF(:,1),TMAF(:,4),10,TMAF(:,3))
  xlim([0 TMAF(end,1)+step]);  %Sets x axis limits
  ylim([0.1 9]);
  xlabel('Time('), ylabel('Frequency');
  colorbar('SouthOutside')
  hold on
  subplot(5,5,[5,10])
  [number,center]=hist(TMAF(:,4),[-100:histinterval:100]);
  plot(number,center,'k')
  hold on
  ylim([0.1 9]);
  xlabel('Number')
  colorbar('off')
  subplot(5,5,[16:19,21:24])
  plot(TMAF(:,1),TMAF(:,3))
  colorbar('off')
  xlabel('Time'), ylabel('Amplitude');
  %%