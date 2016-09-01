import matplotlib.pyplot as plt
import numpy as np

#Define wave form
#Define sampling rate
Fs=150.0
#Define sampling interval
Ts=1.0/Fs
#Create time vector
t=np.arange(0,1,Ts)
#Define frequency of the signal
ff=5
y=np.sin(2*np.pi*ff*t)

n=len(y)
k=np.arange(n)
T=n/Fs
frq=k/T
frq=frq[range(int(n/2))]
print(frq)
