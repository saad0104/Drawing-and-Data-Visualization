# Topic -> Diverging Chart




library(ggplot2)

mtcars$"car name" <- rownames(mtcars)
mtcars$"car name"

mtcars$mpg_z <- round((mtcars$mpg - mean(mtcars$mpg)) / sd((mtcars$mpg), 2))
mtcars$mpg_z

mtcars$mpg_type <- ifelse(mtcars$mpg_z < 0, "below", "above")
mtcars$mpg_type
mtcars <- mtcars[order(mtcars$mpg_z)]


mtcars$"car name" <- factor(mtcars$"car name", levels = mtcars$"car name")

# print(mtcars)


# diverging bar chart

# ggplot(mtcars, aes(x = "car name", y = mpg_z, label = mpg_z)) +
#     geom_bar(stat = "identity", aes(fill = mpg_type), width = .5) +
#     scale_fill_manual(
#         name = "milage",
#         labels = c("Above Average", "Below Average"),
#         values = c("above" = "#00ba38", "below" = "#f8766d")
#     ) +
#     labs(
#         subtitle = "Normalised mileage from 'mtcars'",
#         title = "Diverging Bars"
#     ) +
#     coord_flip()



# divergign lollipo charts

# ggplot(mtcars, aes(x = `car name`, y = mpg_z, label = mpg_z)) +
#     geom_point(stat = "identity", fill = "black", size = 6) +
#     geom_segment(aes(y = 0, x = `car name`, yend = mpg_z, xend = `car name`), color = "black") +
#     geom_text(color = "white", size = 2) +
#     labs(
#         title = "Diverging Lollipop Chart",
#         subtitle = "Normalized mileage from 'mtcars': Lollipop"
#     ) +
#     ylim(-2.5, 2.5) +
#     coord_flip()



# diverging dot plot


ggplot(mtcars, aes(x = `car name`, y = mpg_z, label = mpg_z)) +
    geom_point(stat = "identity", aes(col = mpg_type), size = 6) +
    scale_color_manual(
        name = "Mileage",
        labels = c("Above Average", "Below Average"),
        values = c("above" = "#00ba38", "below" = "#f8766d")
    ) +
    geom_text(color = "white", size = 2) +
    labs(
        title = "Diverging Dot Plot",
        subtitle = "Normalized mileage from 'mtcars': Dotplot"
    ) +
    ylim(-2.5, 2.5) +
    coord_flip()




# does'nt work
