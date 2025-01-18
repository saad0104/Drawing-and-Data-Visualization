#   Topics ->
        #   -> tidyr package





library(tidyr)
library(dplyr)



dat <- data.frame(

    S.no = c(1:5),
    Group.1 = c(23,345,76,212,88),
    Group.2 = c(117,89,66,334,200),
    Group.3 = c(29,101,239,289,176)
)

write.csv(dat, file = 'grp.csv')


f <- read.csv('grp.csv')
f

# gather() function

# it takes multiple collumns and gather them into key-value pairs. 
# It makes wide data longer.

# gather(file, key = 'key' ,value = 'val' ,na.rm = False, convert = false, factor_key = false)

# key, vlaue -> name of the key and value
# na.rm -> removes row with NA value if TRUE
# convert -> if TRUE, converts the type of key.
# factor_key -> if FALSE, the default, the key values will be stored as a character vector.
#              if TRUE, will be stored as a factor, which preserves
#                   the original ordering of the columns.



long <- gather(f)
long



#   *****  seperate() function  *****

# converts longer data to wider format. Turns single collumn to multiple collumns.

# col -> collumn name, into -> name of new var to create as char vector
# sep -> seperator , remove -> if true, removes input collumns from output data frame
# convert -> if true, 


h <- long %>% separate(key, c('keya','valu'))
h





#   ****  unite()  ****

# it merges two collumns into one


utd <- h %>% unite(f,keya,valu,sep = '*')
utd




#  *********  spread()  ******

# makes data wide

sprd <- f %>% spread(S.no,Group.1)
sprd












#  makes longer  ->  gather , melt, unpivot, fold
# makes wider -> spread, cast, pivot, unfold




#   ******  Pivot Longer *******


# dt <- pivot_longer(h,
#                     cols = c('Age','Gender'),
#                     names_to = 'Nam',
#                     values_to = 'Var'
# )
# dt



#   *******  spread() ******



