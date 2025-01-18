import matplotlib.pyplot as plt
import numpy as np

# hist() function to create Histogram


x = np.random.normal(170,10,250)   # generates random numbers , starts from 170, ends at 250
plt.hist(x,color='c')
plt.title("Random Numbers",loc = 'right')
plt.show()