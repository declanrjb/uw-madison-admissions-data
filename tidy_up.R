library(tidyverse)

df <- read_csv('uw-madison-admissions_untidy.csv')

df <- df %>% 
  pivot_longer(cols=colnames(df)[3:14]) %>%
  rename(Group = name) %>%
  rename(Num_Students = value)

write.csv(df,'uw-madison-admissions_tidy.csv',row.names=FALSE)