#     topics -->
#          -> ggplot2
#          -> scatter plot
#           -> jitter plot



library(ggplot2) # loads the ggplot2 library

url <- "https://tinyurl.com/mtktm8e5"
ins <- read.csv(url)
ins




#  + operator adds a new layer over the plot.
#  aes  -> aesthetics mapping
#  ggplot2 -> gg -> grammer of graphics , plot -> plots
# aes(x axis parameter, y axis parameter, distinguish colour according to Species)
#  labs(x axis label, y axis label)
#  ggtitle()   -->> title of the plot
#  annotate()  --> text -> adds text , rect -> highlights segment  , segment




irisplot <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour = Species)) +
     geom_point(shape = 2)
irisplot + labs(y = "Petal Length(cm)", x = "Sepal Length(cm)")
ggtitle("Petal and Sepal Length of Iris") +

     irisplot + annotate("rect", xmin = 5, xmax = 7, ymin = 4, ymax = 6, alpha = 0.5)
irisplot + annotate("segment", x = 5, xend = 7, y = 4, yend = 5, color = "black")
irisplot + annotate("text", x = 6, y = 5, label = "Hi")

#  legend

# irisplot + theme(legend.position = "none")    # no legend
irisplot + theme(legend.position = "top") # legend at the top
# irisplot + theme(legend.title = element_blank())   # no title for legend
irisplot + theme(legend.text = element_text(
     colour = "red",
     size = 8, face = "italic"
)) # text attribute for legend



#   scatter plot

#  geom_point()  --> Scatter plot
#  shape --> different shapes, eg -> 1 - circle, 2 - triangle
# colour = species ->> different color for dots of different species
# geom_smooth function aids the pattern of overlapping and creating the pattern of required variables.
#  se = FALSE removes shades around the line

irisplot + geom_smooth(method = lm, se = FALSE)




# jitter plot


mpgplot <- ggplot(mpg, aes(cyl, hwy)) +
     geom_point() +
     geom_jitter(aes(colour = class))


mpgplot


