import matplotlib.pyplot as plt
import numpy as np

#  The scatter() function plots one dot for each observation. 

xdots = [1,2,3,4]
ydots = [4,6,2,8]

plt.scatter(xdots, ydots, color = 'k')

xxdots = [2,4,6,8]
yydots = [5,7,3,9]
# c = ['r' , 'g' , 'b' , 'c']

# using colormap   | visidis is a built in colormap in matplotlib
# dots size --> s
# alpha -->> transparency of dots (range 0 to 1)

cs = [10,25,50,70]
ss = [10,1550,200,55]
plt.scatter(xxdots,yydots, c = cs , cmap = 'viridis', s = ss, alpha = .2)

plt.colorbar()



plt.show()
# plt.title("Scatter is what?")   # title doesn't work