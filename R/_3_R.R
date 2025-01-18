
#     Tpoics ->
#
#           -> Mathematical Functions
#            -> Random Numbers
#


#   *********  mathmatical Functions ***********

x <- c(4.258, -3.853, 5.457, 7.504)

abs(x)     # absolute value of the elements
ceiling(x)    # ceil value of the elements
floor(x)      # floor value of the elements
round(x,2)      # rounded value of the elements to 2 decimal points
trunc(x)       # trunced value of the elements, only the int part
sqrt(x)       # square root of the elements
exp(x)        # exponential value of the elements
log(x)        # logarirhm vlaues of the elements
log(x,base = 2)    # logarthimic value with the base 2
log2(x)            # logarthimic value with the base 2        
factorial(x)      # factorial of the elements



#     ******* Random Numbers  ******

x <- rnorm(10)
x
y <- rnorm(10 , mean = 20, sd = 1)    # random numbers with mean 20 and standerd deviation 1
y
