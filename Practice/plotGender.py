import pandas as pd
import matplotlib.pyplot as plt

file_path = "ex.csv"
data = pd.read_csv(file_path , sep="\t")
gender_counts = data['Gender'].value_counts()

print(gender_counts)

plt.figure(figsize=(8, 6))
plt.pie(gender_counts, 
        labels= gender_counts.index,
        startangle=0,
        colors=[ 'green', 'pink'])

plt.title("Plotting based on Gender")
plt.legend()

plt.show()



