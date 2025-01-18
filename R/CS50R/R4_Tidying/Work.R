url <- "https://github.com/fivethirtyeight/data/raw/master/non-voters/nonvoters_data.csv"
voters <- read.csv(url)
# View(voters)
# nrow(voters)
# ncol(voters)
# unique(voters$voter_category)
# unique(voters$Q22)
# unique(voters$Q21)
factor(voters$Q21,
        labels = c("?", "Yes" , "No" , "Unsure"),   # for the value -1 , we labels it as "?" , for 1 its Yes.
        # exclude = c("-1")
)

# factor is something like list or vector but factor is simplified.
# labels 'rename / labels' data according to our given name and makes it more understable
# exclude  --> removes the selected data from the vactor 


# Special Tyoes :-
# Inf -->> Infinity  , -Inf -->> not infinity
# NA  ->> Not Available
# Nan -->> not a number
# Null -->> null
