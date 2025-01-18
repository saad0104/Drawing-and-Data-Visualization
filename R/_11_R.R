#  Topics ->
# -> Plotting
# -> Line Drawing
# -> Pie Chart


library(dplyr)


#    ********  Plotting ******


# plot(1,3)
# plot(c(2,2),c(4,5))

# plot(1:10, type = "l", main = "Frist Plot", xlab = "X-Axis", ylab = "Y-Axis", col = "blue", cex = 2) # line
# "l" -> line, "p" -> plot, "b" -> both, "s" -> stair

# lines(0:3,type = 'l', pch = 7, lwd = 2, lty = 3,col = 'red') 
# pch -> line characteristics, lwd -> line width, lty -> line type



#  ******* pie Chart *********


# has error
# pc <- summarise(group_by(read.csv('HSS.csv'),Gender),sum(Age))
# pie(pc)

y <- c(10, 20, 30, 40)
labs <- c("Apple", "Nothing", "Samsung", "oppo")
cols <- c("red", "yellow", "green", "blue")
pie(y, init.angle = 90, labels = labs, main = "Phones", col = cols)
legend("topleft", labs, fill = cols)



# next lessons -> tidyr and ggplot2
