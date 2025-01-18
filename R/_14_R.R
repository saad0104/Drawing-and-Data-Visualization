#    Topics  -> Bar Plot

#           



library(ggplot2)

# 
#  stat -> stats on which bars will be plotted.



mpgbar <- ggplot(mpg, aes(x=factor(cyl))) +
        geom_bar(stat = "count")
mpgbar

# irishisto <- ggplot()



#  ***********   histogram

#  col => outlien colour , fill -> colour of the bar ,
# alpha -> transparency , binwidth -> width of the bar



mghisto <- ggplot(mpg, aes(x = hwy)) + 
                geom_histogram(col = "red",
                fill = "green",
                alpha = 0.3,
                binwidth = 5)
mghisto




# stacked graph


st <- ggplot(mpg, aes(class))
st + geom_bar()



# bar chart for more, collumn chart for less

# stacked collumn chart