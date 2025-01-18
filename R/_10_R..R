#        Topics  -> 
#                 -> Bar Graphics
#                 -> Horizontal Bar Graphics
#                 ->  Histogram




library(dplyr)
allDt <- read.csv('HSS.csv')


#       ********    BarGraphics **********


# pltdt <- select(allDt,Age,Gender,Bedtime) %>% head(15)
# pltdt


# barplot(pltdt$Age , xlab = 'No.', ylab = 'Age', main = "Bar Chart on Age", col = 'blue')

# barplot(pltdt$Age,horiz = TRUE)  #  Horizontal Bars


#   *********  stacked bar pltot   ***********



# stbdt <- t(data.matrix(select(pltdt,Age,Gender)))     # we have to convert the matrix into transpose mtx before plotting.
# stbdt

# barplot(stbdt,
# legend('topright', c('Age')))


#  ******  Histogram *******

hsdt <- arrange(select(read.csv('US_Stock_Data.csv'), 
Natural_Gas_Vol.,Natural_Gas_Price),Natural_Gas_Price,Natural_Gas_Price>2.1) %>% head(20)

hist(hsdt)

