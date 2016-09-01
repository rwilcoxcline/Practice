import matplotlib.pyplot as plt
import numpy as np
import wave
import sys

wave=wave.open('imp.wav', 'r')
signal=wave.readframes(-1)
signal=np.fromstring(signal, 'Int16')
plt.plot(signal)
plt.show()
