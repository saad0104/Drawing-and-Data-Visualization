an <- load("anita.RData")

ggplot(an, aes(x = time, y = wind)) +
    geom_point(
        size = 1.5
    ) +
    geom_line(
        linetype = 3, # types of line
        linewidth = 0.5
    ) + # connects dots
    labs(
        x = "Date",
        y = "Wind Speed",
        title = "Hurricane Data"
    ) +
    geom_hline(
        linetype = 2,
        yintercept = 65 # draws a horizontal line at y = 65
    ) +
    theme_classic()
