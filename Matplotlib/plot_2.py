import matplotlib.pyplot as plt
import numpy as np


#   ***** Plotting with Labels*****

# plt.xlabel() --> to title x axis  |  plt.ylabel() -->> to title y axis  || plt.title() --> title of the graph
# fontdict --> font  | fontsize --> size of font
# loc --> position of the title  left,right,


xpoints = [1,4,7,10,14]
ypoints = [6,16,3,12,17]

plt.plot(xpoints,ypoints,marker = 'o' , mfc = 'k', mec = 'k' , color = 'b')

plt.title("Go for Gold",loc = 'right')
plt.xlabel("X-axis", fontsize = '10')
plt.ylabel("Y-axis")
# plt.show()



#    **** Grid lines ****

# plt.grid() for grid lines


# plt.grid(axis='x')
plt.grid(axis='both', color = 'y' , ls = ':' , lw = '1')

plt.show()