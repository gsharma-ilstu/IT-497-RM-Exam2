library(plyr)
library(devtools)
URLaddress3 <- paste0("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv")
DataURL3 <- RCurl ::getURL(URLaddress3)
Ans3 <- read.csv(textConnection(DataURL3),quote = NULL,sep=",")
Ans3 <- Ans3[-541:-542,]
Ans3