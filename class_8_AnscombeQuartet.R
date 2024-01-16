install.packages("Tmisc")
library(Tmisc)
library(tidyverse)
library(dplyr)
data(quartet)
View(quartet)

quartet %>%
  group_by(set) %>%
  summarise(mean(x),sd(x),mean(y),sd(y),cor(x,y))

ggplot(quartet,aes(x,y)) + geom_point () + geom_smooth(method=lm,se=FALSE) + facet_wrap(~set) 