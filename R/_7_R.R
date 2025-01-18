#  Topics   ->
#            -> missing values



# NA  == Not Available

# is.na() function


x <- c(10,4,NA,7,NA)
is.na(x)       # not available
is.nan(x)      # nan -> not a number

y <- is.na(x)    # stores the logical values of x.
x[!y]     # removes the NA valus



id <- c(101,102,103,104,105)
temp <- c(25,8,NA,34,20)
wind <- c(78,59,63,40,68)
hum <- c(25,45,85,NA,91)

weather <- data.frame(id,temp,wind,hum)
weather

weatherNA <- complete.cases(weather)      # logical values of the weather dataframe.
weatherNA

weather[weatherNA,]      # removes the rows with NA values
