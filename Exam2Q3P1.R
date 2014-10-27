library(plyr)
library(devtools)
URLaddress3 <- paste0("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv")


DataURL3 <- RCurl ::getURL(URLaddress3)

Ans3 <- read.csv(textConnection(DataURL3),quote = NULL,sep=",")
Ans3 <- Ans3[-541:-542,]



fig3.2 <- ggplot(Ans3, aes(x=Steps, y=Miles)) +
  geom_point(shape=4) + ggtitle("Steps to Miles : Scattered Graph")

fig3.2
