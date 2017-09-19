## Bio 268 - Lab 2: Intro to R
## Created by: Amanda Zellmer
## Date Created: September 18, 2016
## Date Modified: September 15, 2017
## Purpose: Learn basic steps in R

## Load necessary R packages

#The first time you use a package, you will need to download and install
install.packages("ggplot2")
install.packages("RCurl")

#After installing and for all subsequent uses, you will need to load packages before using them
library(ggplot2)
library(RCurl)

###############################################
########## Create a bar graph #################
###############################################

#To run any of the commands in an R script, you can either
  #1) Highlight the whole command and then paste into the console window below
  #2) Highlight the whole command and then click the "run" button above
  #3) Put your cursor on the line that you want to run and click the "run" button above
  

#Open the Acute Mountain Sickness Dataset from Lab 1, using a convenient link online
AMS.url <- getURL("https://raw.githubusercontent.com/OxyCompBio/OxyBiostats/master/AcuteMountainSickness.csv")
AMS <- read.csv(text = AMS.url)

#Plot the bargraph
ggplot()+
  geom_bar(data=AMS, aes(x=Treatment, fill=AMS), position="dodge")

#Change the background and make text larger
ggplot()+
  geom_bar(data=AMS, aes(x=Treatment, fill=AMS), position="dodge") +
  theme_bw(base_size=18)

#Change axis labels
ggplot()+
  geom_bar(data=AMS, aes(x=Treatment, fill=AMS), position="dodge") +
  theme_bw(base_size=18) +
  ylab("Frequency")

#Save your graph
#Above your graph, click on Export, Save as Image

###############################################
########## Create a histogram #################
###############################################

##Create a histogram of reaction speeds for students in Bio 268
##Follow the directions in the lab to measure your reaction speed and then add your data to the google spreadsheet
##Download the google spreadsheet as a .csv file. (CSV = Comma Separated Values, in other words it is a spreadsheet where each data point is separated by commas)

#Locate the file on your computer, it usually looks like this: C:/Users/Me/Desktop/SomeFolder/example.csv
#You will need to open the file in RStudio in order to use the data.
#Try one of the following approaches:

#1) Find the "Import Dataset" button in the upper right window. Choose "From CSV" and then navigate to the file.

  # When you do this, be sure to name your file ReactionSpeed
  # so that you can easily use the commands below.
  # If not, you can rename your file like this:
  ReactionSpeed <- Lab_2_Data_Tuesday

#2) Open the data with one of the following commands (You will need to change the path name to the folder and file on your computer)

  # First tell R what the name of the file is using
  # either of these commands
  filename <- ("/Users/zellmer/Downloads/ClassData.csv")
  filename <- ("~/Downloads/ClassData.csv")
  # Then open the file using the command read.table
  # and name the file ReactionSpeed
  ReactionSpeed <- read.table(filename, header=T, sep=',')



#View the new R object using 3 different methods
View(ReactionSpeed)
head(ReactionSpeed)
ReactionSpeed[1:5,]

#Plot Reaction Speeds
ggplot()+
  geom_histogram(data=ReactionSpeed, aes(x=Speed))

#Change the width of each bin
#Plot Reaction Speeds
ggplot()+
  geom_histogram(data=ReactionSpeed, aes(x=Speed), binwidth = 0.1)
  
  
# Can you figure out how to change the background, make the font larger, and change axis labels as in the bar graph above?

# Can you figure out how to change the color of your graph? Can you change anything else?
# http://docs.ggplot2.org/current/geom_histogram.html

#Save your graph

#Calculate the mean reaction speed for the class
#If you want to refer to a specific column in a dataset, use the following format: dataset$column
mean(ReactionSpeed$Speed)
sd(ReactionSpeed$Speed)

#Can you figure out how to calculate the Standard Error in R?

#Can you figure out how to calculate the approximate 95% Confidence Intervals in R?