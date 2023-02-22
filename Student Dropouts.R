library(readxl)
df=read_excel("dropouts.xlsx")
head(df)
tail(df)
View(df)
str(df)
summary(df)

#libraries
library(lattice)
library(rmarkdown)
library(dplyr)

glimpse(df)

#dimension
dim(df)

#histogram

histogram(~Marital_status|Target,main="histogram_of_dropouts",xlab ="Target",ylab ="Marital_status",breaks = 50,col='red',df)
histogram(~Scholarship_holder|Gender,main="Schlorship_distribution",xlab ="Gender",ylab ="Scholarship_holder",breaks = 20,col='pink',df)
histogram(~Unemployment_rate,main="histogram_of_unemployment",breaks = 50,col='skyblue',df)          
histogram(~Scholarship_holder|Debtor,main="histogram_of_debtors",xlab ="Scholarship_holder",ylab ="Debtor",breaks =60 ,col='blue',df)
histogram(~Age_at_enrollment,main="histogram_of_age",breaks =40 ,col='grey',df)
histogram(~one_sem_grade|Target,main="distribution of target",xlab ="one_sem_grade",ylab ="Target",breaks =40 ,col='yellow',df)

#Boxplot

bwplot(df$Marital_status)
bwplot(df$Age_at_enrollment,box.width=0.5)
bwplot(df$one_sem_grade,box.width=1)
bwplot(df$Unemployment_rate,box.width=0.5)
bwplot(df$Debtor,box.width=0.5)

#scatter plot

xyplot(Unemployment_rate~Course, main = "distribution of course& unemployment", xlab = "Unemployment_rate", ylab = "Course",df)
xyplot(Course~Age_at_enrollment, main = "distribution of enrollment age&course", xlab = "Course", ylab = "Age_at_enrollment",df)

#ggplot

install.packages("ggplot2")
library(ggplot2)
ggplot(df,aes(x = one_sem_grade, y = Unemployment_rate)) +
  geom_point() +
  geom_smooth(method = "lm") +
  xlab("one_sem_grade") +
  ylab("Unemployment_rate") +
  ggtitle("grade~Unemployment")
ggplot(df,aes(x =GDP , y =Displaced )) +
  geom_point() +
  geom_smooth(method = "lm") +
  xlab("GDP") +
  ylab("Displaced") +
  ggtitle("GDP~Displaced")
