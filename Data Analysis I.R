#This file contains all the practice I did
#while learning from the course stat545
#url: https://stat545.com/

#ch5: Data Analysis

#install necessary packages

install.packages("gapminder")
library(gapminder)
install.packages("tidyverse")
library(tidyverse)


#rudimentary analysis of the dataset

head(gapminder) # --> extract first few rows   
summary(gapminder) # --> statistical overview the dataset
str(gapminder) # --> get the structure of dataset
class(gapminder) # --> understand the datatype
as_tibble(gapminder) # --> explicitly convert dataset into tibble 
names(gapminder) # --> columns of the dataset
ncol(gapminder) # --> get no.of.columns
length(gapminder) # --> same as ncol()
dim(gapminder) # --> get the dimensions of dataset
nrow(gapminder) # --> get the no.of.rows


#understanding the data values

head(gapminder$country)
summary(gapminder$lifeExp)
head(gapminder$year)
summary(gapminder$year)
table(gapminder$year)
class(gapminder$continent)
levels(gapminder$continent)
summary(gapminder$continent)


#very basic plots in R

ggplot(gapminder, aes(year, lifeExp)) + geom_point()
ggplot(gapminder, aes(gdpPercap, lifeExp)) + geom_point()
plot(lifeExp ~ gdpPercap, gapminder)
plot(lifeExp ~ log(gdpPercap), gapminder)
hist(gapminder$lifeExp)



