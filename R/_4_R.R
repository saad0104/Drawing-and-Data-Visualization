#   Topics
    #       --> Matrix



#   ****** Matrix ********

# matrix is 2 dimensioanl vector

# nrow = number of row  , ncol = number of collumn  , bycol, default value is false.


m <- matrix(c(1,2,3,4,5,6),nrow = 2 ,ncol = 3 , byrow = TRUE)
m
dim(m)    # dimention of the matrix (row, col)

#     ** vector to matrix  **
 
n <- c(1,2,3,4,5,6)     # vector
dim(n) <- c(2,3)        # converted to a matrix of dim(2,3)
n                      # matrix


o <- matrix(1:6,nrow = 2, ncol = 3)
o
nrow(o)      # number of rows of the matrix
ncol(o)      # number of collumn of the matrix


#    ** diagonal function diag() ***

# diagonal matrix ->>  konakoni (m,n) er value thake, baki m,n er value 0


p <- matrix(4,3,3)
p
p <- diag(1,3,3)
p

#   ** name of row and col  ***

q <- matrix(c(2,3,4,0,1,2,-1,-2,-3,-5) ,nrow = 3, ncol = 3, byrow = TRUE)
rownames(q) <- c(1,2,3)
colnames(q) <- c('a','b','c')
q


#   *** Matrix indexing  ****

r <- matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3, ncol = 3,byrow = TRUE)
r[1,2]  # 1,2 nd index
r[1, ]   # 1st row 
r[-3,]    # eliminates 3rd row
r[2,3] <- 11   # 11
r


#    ****** rbind() , cbind() *****

# rbind()   -- >  adds row of elements 
# cbind()   --> adds collumn of elements

s <- matrix(c(1,2,3,4,5,6,7,8,9),ncol = 3, nrow = 3, byrow = TRUE)
t <- rbind(s,c(10,11,12))
t
u <- cbind(s,c(13,14,15))
u


#   *****  Matrix Operations ****

# addition
v <- matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3, ncol = 3, byrow = TRUE)
w <- matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3, ncol = 3, byrow = TRUE)

v + w

# subtraction , multiplication, divition is possible

rowSums(v)   # sum of the rows
colSums(v)    # sum of the cols
rowMeans(v)     # means of the rows
colMeans(v)    # means of the collumn

apply(v,1,sum)    # apply(mtx name, dimention , operation ) 1 -> rows , 2 -> cols



#  Looping through matrix

x <- matrix(c("apple", "banana", "cherry", "ornage"), nrow = 2, ncol =2)

for(rowa in 1:nrow(x))
{
    for(cola in 1:ncol(x))
    {
        print(x[rowa, cola])
    }
}

