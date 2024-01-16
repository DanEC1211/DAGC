library("palmerpenguins")
library("skimr")
library("here")
library("janitor")
library("tidyverse")
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)
penguins %>%
  select(-species)
penguins %>%
  rename(island_new=island)

rename_with(penguins, toupper)
rename_with(penguins, tolower)
clean_names(penguins)
