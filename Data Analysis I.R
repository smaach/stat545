#This file contains all the practice I did
#while learning from the course stat545
#url: https://stat545.com/

#ch5: Data Analysis I

#install necessary packages

# install.packages("gapminder")
# library(gapminder)
# install.packages("tidyverse")
# library(tidyverse)


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

table(gapminder$continent)
barplot(table(gapminder$continent))
barplot(table(gapminder$country))


## we exploit the fact that ggplot2 was installed and loaded via the tidyverse
p <- ggplot(filter(gapminder, continent != "Oceania"),
            aes(x = gdpPercap, y = lifeExp)) # just initializes
p <- p + scale_x_log10() # log the x axis the right way
p + geom_point() # scatterplot
p + geom_point(aes(color = continent)) # map continent to color
p + geom_point(alpha = (1/3), size = 3) + geom_smooth(lwd = 3, se = FALSE)
#> `geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = "cs")'
p + geom_point(alpha = (1/3), size = 3) + facet_wrap(~ continent) +
  geom_smooth(lwd = 1.5, se = FALSE)
#> `geom_smooth()` using method = 'loess' and formula 'y ~ x'



#using dplyr package

library(tidyverse)
library(gapminder)
gapminder

filter(gapminder, between(lifeExp, 29, 40))
filter(gapminder, lifeExp < 29 & lifeExp > 40)
filter(gapminder, country == 'Rwanda', year > 1979)
filter(gapminder, country %in% c('Rwanda', 'Afghanistan'))

#-----------------------------------------------------------#

#learning dplyr from the internet (yt video)

library(dplyr)
install.packages('nycflight13')
library(nycflights13)
??nycflights13
class(nycflights13::planes)
class(nycflights13::planes$engines)
nycflights13::flights
names(nycflights13::flights)
df <- select(nycflights13::flights, year, month, day, flight)
a <- list(4, 'agnb', Inf)
a[3]
?dplyr
browseVignettes(package = 'dplyr')
typeof(-5)
typeof(-Inf)

a <- c(5, 'meet', Inf)
typeof(a)
b <- list(5, NaN, Inf, 'blahblah')
typeof(b)
b[1]
b[4]
typeof(b[4])
str(b)
tpyeof(NaN)
typeof(NaN)
x <- list(5, 'apple', list(5,10))
x[[3]]
typeof(x[[3]][[1]])

