# Creating Tables

x = c("Yes","No","No","Yes","Yes")

#bar plots

#method 1

barplot(table(x),xlab="Response",ylab = "Count" , main = "Title")

y = data.frame(x)

ggplot(data = y)+geom_bar(mapping = aes(x = x))

#mtcars bar chart

View(mtcars)

ggplot(data = mtcars) + 
  geom_bar(mapping = aes(x = row.names(mtcars), y = mpg), stat = "identity") +
  theme(axis.text.x = element_text(angle = 60, hjust = 1))+
  xlab("Make")+
  ylab("mpg") +
  ggtitle("Mpg by Make")

# plot histogram for data.xls

View(data2)
hist(data2$Height, xlab = "Height", main = "Histogram for heights")

#change y-axis to proportions

hist(data2$Height, xlab = "Height", main = "Histogram for heights", probability = TRUE)

#increase the number of bins

hist(data2$Height, xlab = "Height", main = "Histogram for heights", probability = TRUE, breaks = 50)

#Exercise 1

hist(data2$Weight, xlab = "Weightt", main = "Histogram for Weights", probability = TRUE, breaks = 50)

fivenum(data2$Weight) # calculates min, Q1, Q2, Q3, max

boxplot(data2$Weight)

boxplot(data2$Weight, data2$Height , names =c("Weight","Height"), col = c("red", "green"))

simple.hist.and.boxplot(data2$Height)




