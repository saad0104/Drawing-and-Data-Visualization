import matplotlib.pyplot as plt
import numpy as np


#         ****Simple Plot (with Line)****

# ls --> linestyle = 'dotted'/':' ,'dashed'/ '--' , 'solid'/ '-' , 'dashdot'/'-.' , 'None'
# color --> Line color 
# lw --> linewidth

xpoints = [1,2,3,4]
ypoints = [1,4,9,6]
plt.plot(xpoints, ypoints,ls = 'dotted',marker = 'o', color = 'c',lw = '10')
plt.show()


#         ****Plot without Line****

xxpoints = ([2,8,21])
yypoints = ([4,6,25])
# plt.plot(xxpoints,yypoints,'o')
# plt.show()



#         ****Default X points / Plotting with Only Y values*****

onlyypoints = [2,5,8,14]

# plt.plot(onlyypoints)
# plt.show()



#        ****Plotting With Marker****
 
# Marks the point with specified signs || ms --> Marker size  || mec -->> Marker edge Colour  || mfc -->> marker fill colour
# Hexadecimal coloue values and supported colour names like hotpink also can be used.

xpoints = [1,2,3,4]
ypoints = [1,4,9,6]
# plt.plot(xpoints,ypoints, marker = '*', ms = 20, mec = 'r' , mfc = 'g')   
# plt.show()



#      ***Plotting with Format string***

# marker|line|color  -->> o:r  --> o as marker, : for dotted line,  in red colour

ypoints = [1,4,9,6]

# plt.plot(ypoints,'o:r')    # o as marker, : for dotted line,  in red colour
# plt.plot(ypoints,'*-g')    # Solid line for '-'
# plt.plot(ypoints,'*-.b')     # Dashed dotted line for '.-'
# plt.plot(ypoints,'*--c')      # Dashed line for '--'
# plt.show()
 
# color references : o --> orange, g --> Green, b --> blue, c --> Cyan, m --> Magenta, y --> Yellow, k --> Black, w --> White
