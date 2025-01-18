import matplotlib.pyplot as plt
import numpy as np

# pie() -->> Creates pie chart


# *********Basic pie***********
# y = [10,45,45]

# plt.pie(y)
# plt.show()



# ************Pie with Labels***********

# startangel defines angel to start the pie
#explode  -->> breaks the pie into pieces
# shadow  -->> Adds shadows where exploded
# plt.legend()  -->> Adds explanation 

y = [10,30,20,25,5]
lbels = ["A" , "B" ,"C" , "D" , "E"]
eplode = [0.1,0.1,0.1,0.1,0.1]
clor = ['g', 'b' , 'r' , 'c' , 'k']
plt.pie(y,labels = lbels , startangle=90, explode = eplode , shadow= True, colors= clor)
plt.legend(title= "Legend")


plt.show()