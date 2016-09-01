import numpy as np
import matplotlib.pyplot as plt
from pylab import *
from os import *
from math import *

#first load the raw data to display image (don't reshape)
A=np.loadtxt('blur.txt', dtype=float)


plt.figure(1)
plt.gray()
plt.subplot(211)
plt.imshow(A)


xrng=np.arange(len(A))
yrng=np.arange(len(A))

gaussian=zeros([1024, 1024],float)
gaussian2=zeros([1024, 1024],float)
gaussian3=zeros([1024, 1024],float)
gaussian4=zeros([1024, 1024],float)

sigma=25

for x in xrng:
    for y in yrng:
        gaussian[x,y]=np.exp(-(x**2+y**2)/(2*sigma**2))
        gaussian2[-x,y]=np.exp(-(x**2+y**2)/(2*sigma**2))
        gaussian3[x,-y]=np.exp(-(x**2+y**2)/(2*sigma**2))
        gaussian4[-x,-y]=np.exp(-(x**2+y**2)/(2*sigma**2))

newgaussian=gaussian+gaussian2+gaussian3+gaussian4

print(shape(newgaussian), 'shape of spreading function')

Afft=np.fft.rfft2(A)
print(shape(Afft), 'size of Afft')
Gaussfft=np.fft.rfft2(newgaussian)
Bfft=Afft/Gaussfft
print(shape(Bfft), 'size of Bfft')
B=np.fft.irfft2(Bfft)


plt.subplot(212)
plt.imshow(B)
plt.savefig('Blur.eps', format='eps', dpi=1000)
plt.show()
