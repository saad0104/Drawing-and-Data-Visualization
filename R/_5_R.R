#
#          Topic ->  
#                   -> Lists

# lists can contain any type of data including vector.

a <- list(10,'char', TRUE)
a

#  vector to list

b <- c(1,2,3)
c <- c('a', 'b' ,'c')
d <- c(4,5,6)
e <- list(b,c,d)
e


# list indexing

e[1]   # returns a list
e[[1]]   # returns element of the list
e[[2]][1]    # can access individual elements of the list



#   list subset operator  (&)

e <- list('id'=b,'name' = c, 'score' = d)
e$id 
e[c(1,3)]
e[c('id','score')]


#  list concatenation 

f <- list(c('hello','hi'))

g <- c(e,f)   # concates e and f lists in to new list g.
f <- c(e,f)   # concates e and f lists into list f.
f
g
