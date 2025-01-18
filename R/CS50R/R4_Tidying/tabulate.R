# votes <- read.table("votes.csv", 
# sep = "," , 
# header = TRUE)

votes <- read.csv("votes.csv")

# read,csv()  -- >> default sep is "," , default heder value is true.
# header = TRUE -->> Declares that there are headers or the first collumn are for names.
#  sep = ","  -->> comma to work as seperator
# observation == number of rows the table / csv file has
# variables == number of collumns the table / csv file has.

# votes[, 2]
 # returns the value of the collumn 2


votes$candidate[3]
 # returns the value of the 3rd element of the collumn named "candidate".

# votes[1, 2]
# returns value of the row 1 , collumn 2


View(votes)   # shows the elements of the object
