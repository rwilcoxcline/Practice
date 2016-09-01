#Import modules#

from numpy import *
import matplotlib.pyplot as plt
from pandas import *
import numpy.fft as fft
from math import *
from os import *

#Change directory#

chdir('/Users/admin/Documents/Programming/Python')

BHE=loadtxt('BHE.txt')

time=linspace(0, len(BHE-1)/20, len(BHE))
freq=1/time

fftBHE=fft.fft(BHE)
RefftBHE=abs(fftBHE)

print(RefftBHE)

plt.plot(freq, RefftBHE)
plt.show()
