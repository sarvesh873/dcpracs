% Program to plot PSD and Autocorrelation of White Gaussian Random Process
pkg load statistics
y=normrnd(0,1,1,200); %generates 200 samples ,mean=0 std deviation =1
size(y) % allow to determine size of variable y
y
Gy=periodogram(y); % Returns periodogram (PSD) of y
size(Gy)
Gy
Ry=abs(ifft(Gy,256));% computes ifft and control size of transform by 256
size(Ry) % allow to determine size of variable Ry
Ry
Ry=[Ry(130:256)' Ry(1:129)']
size(Ry)
Ry
t=-127:1:128; % Defining time shift for auto correlation function Ry
t
figure
subplot(1,2,1)
plot(Gy)
xlabel('frequencysamples');
title('PSD')
subplot(1,2,2)
stem(t,Ry)
xlabel('time shift')
title('autocorrelation')