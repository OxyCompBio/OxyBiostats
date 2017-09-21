## Data for Chi-Square Test - Frequency Data Analysis Class
## Created by: Amanda Zellmer
## Date Created: September 21, 2017
## Purpose: To learn how to use chi-square tests
## Background: Testing the null hypothesis of whether female poison dart frogs (Oophaga pumilio) that are red in color have no preference over red or green male frogs.

#Open R packages needed for analysis
library(ggplot2) #ggplot helps us make cool graphs

#Create a random chi-square sampling distribution
x <- rchisq(10000, 1)

#Plot the random chi-square sampling distribution
ggplot()+
  geom_histogram(aes(x=x), stat="bin", binwidth=0.5, fill="aquamarine", color="black")+
  theme_classic(base_size=18)+
  ylim(c(0,2500))+
  xlim(c(0,25))+
  ylab("Frequency")+
  xlab("X^2")

#Calculate Chi-square values for various datasets
chisq.test(c(75,25), p=c(0.5, 0.5)) #75 red & 25 green males chosen
chisq.test(c(51,49), p=c(0.5, 0.5)) #51 red & 49 green males chosen
chisq.test(c(60,40), p=c(0.5, 0.5)) #60 red & 40 green males chosen


#Create our dataset so that we can plot our results
Color <- c("Red", "Green", "Red", "Green")
Hypothesis <- c("Observed", "Observed", "Expected", "Expected")
Frequency <- c(75, 25, 50, 50)

dartfrogs <- data.frame(Color, Hypothesis, Frequency)

#Plot our observed and expected frequencies in a bar plot
ggplot()+
  geom_bar(data=dartfrogs, aes(x=Hypothesis, y=Frequency, fill=Color), stat="identity", position="dodge")+
  theme_classic(base_size=18)+
  scale_fill_manual(values=c("Green", "Red"))