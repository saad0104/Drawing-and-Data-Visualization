# Topics  ->  Arithmatic operations
            # -> Variables
            # -> Data types 
            # -> Assignment
            # -> Realtional Operation
            # -> Logical operation
            # -> sequence 
            # -> replicate 
            # -> conditionals 
            # -> loops (for, while, repeats) 



# print("Hello R Program")
x <- 18 # asignment operator , here x is an variable or object
y <- 4

#    **** Arithmetic Operations  ****

z <- x + y
# print(z)
# z
# print(x - y)
# print( k <- x/y)
18 - 4
18 * 4
18 / 4 # division (double result)
2**3
2^3 # exponential
9**0.5 # exponential
18 %/% 4 # integer Division
18 %% 4 # modulus


#      ****  Variables  *****


# variable names can be alpha numeric and can have '_' and '.'. Always start with an alphabet.
# special chars are not allowed
# variables are dynamic type /in R

# my_var <- 10L  # Int type variable
# my_var <- 20
# print(my_var)
# print(typeof(my_var))  # type of the variable or object.
# mode(x)
# storage.mode(x)
# class(my_var)


#       *****  Data Types *****

# default data type : numeric 

# int
a <- as.integer(10)  # defiens the variable/ object as int type
b <- 10L
is.integer(b)

# complex 
c <- 3 + 4i
class(c)

# logical 
 
d <- TRUE
class(d)

# charcter

e <- "Hello"
e <- is.character("Hello")
class(e)
is.character(e)



#     ******  Variable Assignment  *******


f <- 10
assign('g',11)

print(g)

h = 12
13 -> i

print(h)
print(i)

j <- pi

k <- letters   # stores all alphabet in small case
l <- LETTERS  # stores all alphabet in capital case


#    ***** Relational Operators *****

#  < , > , <= , >= , == 
# always returns logical value. TRUE or FALSE

h > i

#   ****  Logical Operators  ****

#  & , | , ! , (&&  , ||) -> cannot use for vectorized operations

m <- TRUE
n <- FALSE
m | n
m & n
# ! m

#    ***** Sequences  ****

o <- 1:10   # stores a sequnces of number from 1 to 10 (1,2,3,4,5,6,7,8,9,10)
p <- seq(10,25)   # stores a sequnces of number from 10 to 25
q <- seq(5)    # default starts form 1 to 5
r <- seq( 1,10,2)   # stores numbers from 1 to 10 with the gap of 2.  (1,3,5,7,9)

even <- seq(1,10)*2
odd <- seq(1,10,2)    # from 1, to 10, by 2
odd


#       ***** Replicate Function *****

s <- rep( 3,times = 4)    # stores 3 , 4 times (3,3,3,3)
t <- rep(0,each=3)   # each element of o replicates 3 times.
t



#       ******  Control Structure  ******

#   COnditionals  (if , if-else , else-if)

u <- 32
v <- 33

if(u>=v)
{
    print("TRUE")
} else if(u<v)
{
   print("FALSE")
} else 
{
    print("Helllo")
}


ifelse(u>=v,"TRUE","FALSE")    # ifelse(condition,if true,if false)



#      ****   For Loops  ****


# for(w in 1:10)
# for(w in o) 
x <- seq(1,7)
for(w in x)
{
    print(w)
}


#    ******  While Loops    *****

y <- 5
while(y<=10)
{
    print(y)
    y <- y + 1
}


#       ***** Repeat Loops ****

z <- 2
repeat
{
    print(z)
    if(z>=12)
        break
    z <- z + 1
}
