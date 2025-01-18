#   topics ->
#           -> ggplot2 - themes


library(ggthemes)

ggplot(mpg, aes(year, displ, color = factor(manufacturer))) +
    geom_point() +
    ggtitle("Hello") +
    theme_economist() +
    scale_color_economist() 


#   888

theme_set(theme_gray(base_size = 30))
ggplot(mpg, aes(x = year, y = class)) +
    geom_point(color = "red")


# doesn't work
