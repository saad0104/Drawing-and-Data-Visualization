#          Topics ->
#               -> dplyr( package)


# ***********  dplyr() package *********


library(dplyr)
hssdt <- read.csv("HSS.csv")
hssdt
names(hssdt)


# select() function

hssdt[c(1, 4, 6)]
hssdt[c("Gender", "Bedtime")]

subh <- select(hssdt, Age, Gender) # file object, collumn names
subh

subh2 <- select(hssdt, -c(Age, Gender, Bedtime)) #  shows data excepts c() collumns
subh2


#  filter()  function



fdt <- filter(hssdt, Age > 25) # filters the age collumn and shows the rows with age > 25
fdt

ffdt <- filter(select(hssdt, c(Age, Gender, Bedtime)), Age < 25)
ffdt



#   arrange()  function

ardt <- arrange(ffdt, Age)
ardt

ardt2 <- arrange(select(hssdt, Age), desc(Age)) # desc() arrange in descending order



# rename()  function


rnmdt <- rename(subh, ag = Age) # renames Age as ag
rnmdt



#  mutate()  function

# adds new collumn or edit existing one


mttdt <- mutate(hssdt, ag = Age) # adds a new colllumn named age with the value of Age collumn.
names(mttdt)


mtdt <- mutate(hssdt, what = ifelse(Age > 25, "good", "bad"))
mtdt
# what is the name of the newly created collumn based on thre value of the Age collumn.


#  transmute()  function


trdt <- transmute(hssdt, age = Age) # only shows data of the new collumn
trdt



#   group_by()  function



grpdt <- group_by(hssdt, Gender) # makes a group with similar kind data
grpdt
summarise(grpdt, sum(Age)) # finds the sum of group male and group female.
summarise(grpdt, mean(Age))


#   pipe operators    %>%



ppdt <- select(hssdt, Age, Gender) %>%
    arrange(hssdt, Age) %>%
    head(10) # adds the two operations together
ppdt


# distinct()   -> removes duplicate rows
