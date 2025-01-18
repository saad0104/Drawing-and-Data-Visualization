votes <- read.csv("votes.csv")

# sum(votes$poll[2], votes$poll[1], votes$poll[3])   

# sum(votes$poll)
# sum(votes$mail)

votes$total <- votes$poll + votes$mail

# View(votes)
 
write.csv(votes, "totals.csv" , row.names = FALSE)   # dataframe , file name 
# creats new file