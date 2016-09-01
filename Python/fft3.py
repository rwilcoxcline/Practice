import numpy as np
import matplot.pyplot as plt

x=linspace(0,1,100)
y=sin(6*np.pi*y)
ffty=np.fft(y)
plt.plot(x,y)
plt.show()
