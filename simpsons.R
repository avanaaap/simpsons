library(tidyverse)
library(readxl)

theme_set(theme_light())
simpsons <-
  readr::read_delim(
    "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-08-27/simpsons-guests.csv",
    delim = "|",
    quote = ""
  )
#glimpse(simpsons)
#ggplot(data = simpsons, mapping = aes(x = season, y = guest_star)) + geom_bar(stat ='identity', width = 0.5) +theme(axis.text.x = element_text(angle = 65, vjust = 0.6)) +labs(title = "Histogram on Categorical Variable",subtitle = "Manufacturer across Vehicle Classes")

#ggplot(simpsons, aes(x = guest_star)) +
#geom_histogram(stat="count")
 order(simpsons$season)
g <- aggregate(guest_star ~ season,data = simpsons, FUN = length)

ggplot(data=g,mapping = aes(x = season, y = guest_star)) + geom_histogram(stat ='identity') + labs(title = "Histogram on Amount of Guest Stars per season")

