import pandas as pd
import matplotlib.pyplot as plt
file_path = "ex.csv"
data = pd.read_csv(file_path , sep="\t")

# print(data)

x = data['id']
print(x) 
y = data['CGPA']
print(y)

plt.xlabel("ID")
plt.ylabel("CGPA")
plt.title("Bar Plot of ID-CGPA")
plt.legend(loc = 'upper left')

plt.bar(x, y, color = 'blue')
plt.show()