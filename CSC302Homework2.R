df1=data.frame(Name=c('James','Paul','Richards','Marico','Samantha','Ravi','Raghu',
                      'Richards','George','Ema','Samantha','Catherine'),
               State=c('Alaska','California','Texas','North Carolina','California','Texas',
                       'Alaska','Texas','North Carolina','Alaska','California','Texas'),
               Sales=c(14,24,31,12,13,7,9,31,18,16,18,14))
aggregate(df1$Sales, by=list(df1$State), FUN=sum)
library(dplyr)
df1 %>% group_by(State) %>% summarise(sum_sales = sum(Sales))


df <- read.delim("C:/Users/T460s/Downloads/WorldCupMatches.csv", header = T, sep = ',') 
dim(df)
summary(df)

unique(df$City)

mean(df$Attendance, na.rm = TRUE)

aggregate(df$Home.Team.Goals, by=list(df$Home.Team.Name), FUN=sum)

aggregate(df$Attendance, by=list(df$Year), FUN=mean)


df <- read.delim("C:/Users/T460s/Downloads/metabolite.csv", header = T, sep = ',') 
df %>% count(Label)

colSums(is.na(df))

library(tidyr)
df2 = df %>% drop_na(Dopamine)
dim(df2)

df2$c4.OH.Pro[is.na(df2$c4.OH.Pro)] <- median(df2$c4.OH.Pro, na.rm = T)
df2$c4.OH.Pro
