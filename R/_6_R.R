
#    Topic ->  Dataframes


# dataframes are objects to store tabular data(stores data in rows and collumns)

# dataframes are similar to list. but vectors can't be of different length in dataframes.

# dataframes can import data from various data files.


a <- data.frame(
    name = c('A', 'B', 'C'),
    roll = c(1,2,3),
    cgpa = c(1.1, 2.2, 3.3)
    )

a
summary(a)


 # Accessing elements

 a$name   # name vector  
 a[1]   #list of 1st element of the dataframe
 a[[1]]    # individual elements of 1st vector
 a[[1]][2]     # access individual item




# add row and collumns

nra <- rbind(a,c('D', 4, 4.4))    # adds row
nra


nca <- cbind(a, eats = c('Vat' , 'Dal' , 'Ghash'))
nca



#  removes rows and collumns

rnc <- a[,-c(1)]    # removes collumn
rnc

rnr <- a[-c(1),]    # removes row
rnr


#  dimension of dataframe

dim(a)    # row, col


#   length(number of collumns) of dataframe

length(a)      # number of col
ncol(a)


#    combinig dataframes

# cbind() and rbind()
