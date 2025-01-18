# dplyr functions -->> select , filter , arrange , distinct , group-by , summarize

library(tidyverse) # imports the library named 'tidyverse'
package(dplyr)
# storms # built in data set inside the library

#### select()
# dplyr::select(storms ,
#                 !c(lat, long, pressure,
#                 tropicalstorm_force_diameter, ends_with("diameter")
# ))

# in this select funtion, the parameters are (dataset , vector of data we want to (!c() --> remove) or ( c() --> to watch))
# !c() is to remove
# ends_with() function removes collumns  names which ends with the particuler string.


#### filter()
# dplyr::filter(
#     select(storms ,
#                 !c(lat, long, pressure,
#                 tropicalstorm_force_diameter, ends_with("diameter")
# )),
# status == "hurricane"

# )

# filter() works for rows. select() works for collumns.


# pipe -> ' |> ' , ' %>% '  .... adds two or more argument/ finctions
# CHR -> Chracter , DBL -> Double

#  storms |>
#  select(!c(lat,long,pressure,ends_with("diameter"))) |>
#     filter(status == "hurricane")



#### arrange()
# arrange() -> sorts the collumn

# arrange(wind)
#  storms |>
#  select(!c(lat,long,pressure,ends_with("diameter"))) |>
#     filter(status == "hurricane") |>
#         # arrange(wind) # sorting in ascending order
#         arrange(desc(wind), desc(name))  # sorting in descending order


#####  distinct()
# removes duplicate rows

# hurricanes <- storms |>
#     select(!c(lat, long, pressure, ends_with("diameter"))) |>
#     filter(status == "hurricane") |>
#     arrange(desc(wind), desc(name)) |>
#     distinct(name, year, .keep_all = TRUE)


# hurricanes |> 
# select(c(year, name, wind)) |>
# write.csv("hurricanes.csv" , row.names = FALSE)

#  this must create a file called hurricane.csv


#### group_by()

hurricanes <- read.csv("hurricane.csv")
View(hurricanes)


