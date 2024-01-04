data("ToothGrowth")
colnames(ToothGrowth)
View(ToothGrowth)
filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)
arrange(filtered_tg,len)
#Nested
arrange(filter(ToothGrowth,dose==0.5),len)
#With pipes
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5)%>%
  arrange(len)%>%
  print()
#Adding group_by function
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5)%>%
  group_by(supp)%>%
  summarize(mean_len = mean(len,na.rm = T),.group="drop")
print(filtered_toothgrowth)