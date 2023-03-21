data() #gives a list of all in-build datasets in R

plot(mtcars$mpg,mtcars$hp, xlab = "MPG", ylab = "HP", main = "Mpg vs. Hp")

#plot scales data

plot(scale(mtcars$mpg),scale(mtcars$hp),ylim = c(-3,3),xlim = c(-3,3), xlab = "MPG", ylab = "HP", main = "Mpg vs. Hp")

#computing the correlation

cor(mtcars$mpg,mtcars$hp)
cor(scale(mtcars$mpg),scale(mtcars$hp))
#both answers are equal


install.packages("car")
library(car)
#plot scatterplot and box plot together
scatterplot(scale(mtcars$mpg),scale(mtcars$hp), smooth = FALSE)

#install packages

install.packages("ggplot2")
library(ggplot2)
install.packages("ggcorrplot")
library(ggcorrplot)

# calculate correlation matrix for mtcars

cor(mtcars)
View(cor(mtcars))

# heat map of correlation matrix for mtcars

ggcorrplot(cor(mtcars))

ggcorrplot(cor(mtcars), method = "circle")

#Analysis of stock_data
stock_data
ggcorrplot(cor(stock_data))

#heat map for correlation of 4 selected stocks

ggcorrplot(cor(stock_data[,c("VZ","GM","WFC","JPM")]))
