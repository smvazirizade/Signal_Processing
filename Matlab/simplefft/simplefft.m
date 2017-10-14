function [ Freq, Amp] = simplefft( x,step )
%% fast fourier transform:
% Author : Sayyed Mohsen Vazirizade, SUT, 2016
%%
% x is the digital signal, it should be a row or column matrix
% step is the step in the digital singal or step=1/(sampling rate)
%%
Fs=length(x)-1 ;          %total number of samples
Fs
%-----------------------------------------------------------------------
if size(x,1)==1
 Freq = (0:1/(Fs):1/2)/step;  % maximum frequency that could be detected
elseif size(x,2)==1
 Freq = (0:1/(Fs):1/2)'/step; % maximum frequency that could be detected       
end
DFT = fft(x)/Fs*2;
Amp=abs(DFT(1:Fs/2+1));
end

