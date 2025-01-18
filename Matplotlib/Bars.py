import matplotlib.pyplot as plt
import numpy as np

# bar() function creats bar
# color , width , height(in barh() only) ,  
# subplot()  --> indicates position/size of a subplot.

xb = ["A", "B" , "C" , "D"]
yb = [1, 2, 3, 4]

plt.subplot(1,2,1)
cs = ['r','g','k','y']
plt.bar(xb, yb , color = cs ,width = 0.8)

plt.subplot(1,2,2)
plt.barh(yb,xb,color = 'b', height = .5)  #--> Horizontal bar

plt.show()