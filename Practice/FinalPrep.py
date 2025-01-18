import matplotlib.pyplot as plt



data = {
        "Electronics" : 40,
        "Clothing" : 25,
        "Home Applainces" : 15,
        "Groceries" : 10,
        "Others" : 10
}

categories = list(data.keys())
percentges = list(data.values())

plt.figure(figsize=(8,8))
plt.pie(percentges, 
        labels= categories, 
        startangle=0,
        autopct= '%1.1f%%'
        )
plt.title("Percentage of Total Sale")
plt.legend(categories,title = "Contents", loc = "upper right", fontsize = 7)

plt.show()

