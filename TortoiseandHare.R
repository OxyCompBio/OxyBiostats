##Script for Hypothesis Testing Lecture
#Is there a significant difference between the number of races won by a tortoise versus a hare.
#Created by: Amanda Zellmer
#Date Created: 09/15/2016

#load required packages
library(ggplot2)

#enter the data
Wins <- c(6, 21, 13.5, 13.5)
Group <- c("Observed", "Observed", "Expected", "Expected")
Species <- c("Hare", "Tortoise", "Hare", "Tortoise")

x <- data.frame(Wins, Group, Species)

#plot the data in a grouped bar plot
ggplot()+
  geom_bar(data = x, aes(x=Group, y=Wins, fill=Species), stat= "identity", position = "dodge")+
  theme_classic(base_size=18)+
  theme(axis.line.x = element_line(color="black", size = 2),
        axis.line.y = element_line(color="black", size = 2))+
  xlab(NULL)

#Run a chi-square goodness of fit test to test null hypothesis that the proportion of tortoise wins = 0.5
chisq.test(c(6, 21))