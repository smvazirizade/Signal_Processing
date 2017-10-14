function TMAF=simplehilbert(x,step)
%% Hilbert Transform:
% Author : Sayyed Mohsen Vazirizade, SUT, 2016
%%
% x is the digital signal, it should be a column matrix
% step is the step in the digital singal or step=1/(sampling rate)

time = linspace(0,(length(x)-2)*step,length(x)-1);
th = ((angle(hilbert(x))))';
r  =  (abs(hilbert(x)))';
R  =  (r(1:end-1));
d =  (diff(th)/step/(2*pi));  
   
%time, signal (magnitude), Amplitude , Frequency  
TMAF=[time',x(1:end-1),R',d'];


