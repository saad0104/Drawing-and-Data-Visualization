import matplotlib.pyplot as plt
import numpy as np

# plt.subplot(1,2,1)  -- >> 1 row, 2 collumns, first plot

xpoints = [1,2,3,4]
ypoints = [4,6,2,8]

# plt.subplot(1,2,1)
plt.subplot(2,3,1)
plt.plot(xpoints, ypoints , color = 'k')
plt.title("Kalo")

xxpoints = [1,2,3,4]
yypoints = [4,6,2,8]

# plt.subplot(1,2,2)

plt.subplot(2,3,2)
plt.plot(xxpoints, yypoints,color = 'b')
plt.title("Blue Graph" , color = 'k')

xxx = [1,2,3,4]
yyy = [4,6,2,8]

plt.subplot(2, 3, 3)
plt.plot(xxx, yyy,color = 'g')
plt.title("Green is good" , loc = 'right')


xxxx = [1,2,3,4]
yyyy = [4,6,2,8]

plt.subplot(2, 3, 4)
plt.plot(xxxx, yyyy, color = 'y')
plt.title("Gu color", loc = 'left')


xxxxx = [1,2,3,4]
yyyyy = [4,6,2,8]

plt.subplot(2, 3, 5)
plt.plot(xxxxx, yyyyy , color = 'c')
plt.title("Cyan what?")

xxxxxx = [1,2,3,4]
yyyyyy = [4,6,2,8]

plt.subplot(2, 3, 6)
plt.plot(xxxxxx, yyyyyy , color = 'r')
plt.title("Red is the new black", fontsize = 8)


plt.suptitle("Six Graphs looking good")
plt.show()

