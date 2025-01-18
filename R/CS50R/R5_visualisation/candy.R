load("Candy.RData")

ggplot(cnd, aes(x = prc_perc, y = sug_perc)) +
    # geom_point()  # points overlapps
    geom_jitter(color = "darkorchid",
    fill = "white",
    shape = 21,
    size = 2
    ) + # points doesn't overlaps completely
    labs(
        x = "Price",
        y = "Suger",
        title = "Price-Suger"
    ) +
    theme_classic()
