from numpy import loadtxt
from numpy import *
from pylab import plot,xlim,show

x=linspace(0, 1000, 1000)
y=loadtxt('pitch.txt',float)

plot(x,y)
