#Means and Variances activity for Lecture 3 Biostatistics 268
#Created Fall 2016
#Created by Amanda Zellmer
#Purpose: Learn how to calculate means and standard deviation using a simulated dataset comparing mean lengths of beetle larvae burrows for the Polyphagous Shot Hole Borer (PSHB) and the Goldspotted Oak Borer (GSOB)

#Load R Packages
#if you do not have these packages installed already, run the next three lines first:
#install.packages("ggplot2")
#install.packages("plyr")
#install.packages("RCurl")

library(ggplot2)
library(plyr)
library(RCurl)

#Open Data File
urlPSHB <- getURL("https://raw.githubusercontent.com/OxyCompBio/OxyBiostats/master/PSHB_Burrow_Size.csv")
PSHB <- read.csv(text = urlPSHB)

#Plot Data
ggplot()+
  geom_boxplot(data=PSHB, aes(x=Species, y=Length, col=Species))+
  theme_classic(base_size = 18)+
  theme(axis.line.x = element_line(color="black", size = 2),
        axis.line.y = element_line(color="black", size = 2),
        legend.position="none")+
  ylab("Length (cm)")

#calculate means and variances
meanPSHB <- ddply(PSHB, .(Species), colwise(mean))
print(meanPSHB)
sdPSHB <- ddply(PSHB, .(Species), colwise(sd))
print(sdPSHB)

#test for significant differences
PSHB.ttest <- t.test(Length ~ Species, data=PSHB)
print(PSHB.ttest)

