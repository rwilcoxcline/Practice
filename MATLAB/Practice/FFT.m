% Practice Fourier Analysis

BHE=load('BHE.txt')

time=0:1/20:(length(BHE)-1)/20

figure 

plot(time, BHE)

BHEfft=fft(BHE)

ReBHEfft=abs(BHEfft)

figure

Freq=1./time


plot(Freq, ReBHEfft)
hold on
ylim([0 12*10^9])
xlim([0, 20])
hold off



