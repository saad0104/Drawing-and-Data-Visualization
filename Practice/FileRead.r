library(dplyr)

dat <- read.csv("dataset/Student Depression Dataset.csv")
data <- dat[1:10, c(1, 2, 8)] # data contains the 1 to 10 rows with the values of 1, 2 and 8th collumns.
# names(data)

data
data[data[, 3] < 8, ] # rows with the cgpa less than 8
data[data$CGPA < 8, ] # same as previous line

write.table(data, "ex.csv", sep = "\t", row.names = FALSE, col.names = TRUE) # write in file
app <- data.frame(id = 69, Gender = "Male", CGPA = 9.99)
write.table(app, file = "ex.csv", sep = "\t", row.names = FALSE, col.names = FALSE, append = TRUE)


dt <- read.csv("ex.csv", sep = "\t" )
# dt
# d <- dt[5:11,]
# d
