#         Topics  ->
#                  -> Pie Chart



library(ggplot2)

#   pie Chrart



# plotting a horizontal bar graphics



pc <- as.data.frame(table(mpg$class))    # makes a data frame with the data of class of mpg.
pc
colnames(pc) <- c("class", "freq")       # sets the name of the collumns of the data frame
pc


pie <- ggplot(pc, aes(x = "", y = freq, fill = factor(class))) + 
        geom_bar(width = 1, stat = "identity") + 
            theme(axis.line = element_blank(), 
                plot.title = element_text(hjust = 0.5)) +
                    labs( fill = "class",
                    x = NULL,
                    y = NULL,
                    title = "Pie Chart of Class",
                    caption = "Source : mpg"
                    )
pie + coord_polar(theta = "y", start = 0)      #  turning the bar grahics to pie chart

