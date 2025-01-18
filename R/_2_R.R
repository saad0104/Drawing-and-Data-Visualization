#    Topics  ->
#             -> Vectors
#             -> Factors


#       ******   Vectors ****      

# vectors are 1 dimension array 
# types : int, double, logical, char, complex, raw
# c() --> used to create vector
# index starts from 1 , not 0.

# creating a vector 

v <- vector('numeric',length = 5)  # creating an empty vector. deafult values are 0.
x <- c(10,20,30,40,50) 
assign('y', c(60,70,80,90,100))    # creats a vector y and assigns values.
z <- seq(1,10)     # sequence of 1 to 10
w <- rep(12,times = 5)    # stores 12, 5 times
v
y
x
z
w
length(x)  # length of vector

# indexing vector

x[3:5]      # displays elements from 3rd to 5th index.
x[c(1,5)]   # dispalys elements of 1st and 5th index
x[2] <- 6
x[2]
x[-4] <- 99   # all the elements are replaced by 99 excepts the index 4
x

for(i in 1:10)
{
    print(x[i])
}

for(i in seq_along(x))      # seq_along(x) --> sequence along vector x.
{
    print(x[i])
}

for(i in x)
{
    print(i)
}


#  Matching Operator

# finds if an elment is in the vector or not
# n %in% x

40 %in% x

y <- c(99,40,68)
y %in% x

#  Functions of Vector

length(x)
sum(x)  # sum of the elements
prod(x)  # product of the elements
rev(x)   # reverse the elements of the vector
sort(x)   # sorts the elementts in ascending order
sort(x,decreasing = TRUE)    # sorts the elements in descending order

a <- c(1,2,3,4,5)
b <- c(6,7,8,9,10)

a %*% b     # dot product of the vectors

crossprod(a,b)     # cross product of the vector

a %o% b       # outer product of the vector
tcrossprod(a,b)    # outer product of the vector


x[which(x>70)]    #prints the elements of the vector that are greater than 70






#        **********  Factors   ***********

# factors are similar to vector but it has levels.

m <- factor(c(0,1,0,1,1,1,0))
m
