#    Topics   ->  Importing data from txt file
#              -> imorting data from csv files
#               -> importing data from url
#               -> importing data from clipboard
#               -> exporting data to csv file



#    *********    reading data from txt file    ********

# read.table()--> arguments = filename ,header (logical value,default is false)
                    # sep (seperator, default is false), nrows (number of rows, 
                    # default is entire file), skip (number of rows to skip,default is zero)

# header --> if true, first row is considered as title of the collumn.


US_data <- read.table('data.txt', header = TRUE , nrows = 3, skip = 1)
US_data



# ********* importing data from CSV files *********


# read.csv() -- >>  default sep is ','.


csvData <- read.csv('data.csv', header = TRUE)
csvData




#  *********  importing data from rds files  *********

rdsdata <- read.RDS('data.rds')
rdsdata



#  ******  importing data from Internet ******


# url.show("https://www.kaggle.com/datasets/nevildhinoja/e-commerce-sales-prediction-dataset")
# mydata <- read.table("https://www.kaggle.com/datasets/nevildhinoja/e-commerce-sales-prediction-dataset", header = TRUE)
# mydata <- read.table("https://www.kaggle.com/datasets/ashutosh598/shoes-price-for-various-brands" , header = FALSE)
# mydata




#    ***********  importing data from clipboard  ********


# have to copy some data first.
clipData <- read.table('clipboard')
clipData




# **********  Exporting data to CSV File **********


# write.csv()


dt <- data.frame(

    id = c(1,2,3,4,5),
    name = c('A', 'B', 'C', 'D', 'E'),
    cg = c(1,2,3,4,5)
)
dt 
write.csv(dt,file = 'dt.csv')       # creats new file named dt.csv



