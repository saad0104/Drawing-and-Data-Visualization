votes <- read.csv("votes.csv")

v <- ggplot(votes, aes(x = candidate, y = votes)) +
    geom_col(aes(fill = candidate)) + # aes(fill) -> adds colour to blocks
    scale_fill_viridis_d() +          #  virdis is colorblind friendly fill colors
    scale_y_continuous(limits = c(0, 20)) + # -> set bounds to the values
    labs(
        x = "Candidates",
        y = "Votes",                        # labels of the plot
        title = "Election Results"
    ) +
        theme_classic()     # theme of the plot
v

ggsave("votes.png",      # saves the plot file in local machine
plot = v,
width = 1080,
height = 1080,
unit = "px"
)
