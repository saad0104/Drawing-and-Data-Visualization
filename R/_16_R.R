#      Topics ->
#               -> Marginal Plots
#               -> Bubble Plots and Count Charts



library(ggplot2)
library(ggExtra)

# data(mpg)
# head(mpg)


# gplt <- ggplot(mpg, aes(cty,hwy)) +
#         geom_count() +
#             geom_smooth(method = "lm", se = F)
# gplt

# marginal plot (relationship between two plots)

# ggMarginal(gplt, type = "histogram", fill = "transparent")


# ggMarginal(gplt, type = "boxplot", fill="transparent")




#    ****  Bubble Plots and Count Charts ****

# bubble plot -> more than 3 variables

p <- ggplot(mpg, aes(x = cty, y = hwy)) +
        geom_point()
p

