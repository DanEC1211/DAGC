library("tidyverse")
penguins %>%
  arrange(bill_length_mm)
penguins %>%
  arrange(-bill_length_mm)
penguins %>%
  group_by(island)%>%
  drop_na()%>%
  summarise(mean_bill_length_mm=mean(bill_length_mm))
penguins %>%
  group_by(island)%>%
  drop_na()%>%
  summarise(max_bill_length_mm=max(bill_length_mm))
