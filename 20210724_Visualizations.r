# Visualization

# GGPLOT - Grammer of graphics
# plot= this helps us to create a scatter plot

View(mtcars)
plot(mtcars$wt, mtcars$mpg, xlab="Weight", ylab="Mileage", col="Red")

v <- c(1, 2, 3, 2, 4, 5, 1, 2)
barplot(table(v))

table(v)

# histogram - to see the frequency distribution
data<- runif(1000, 1, 10)
hist(data)


# GGPLOT

# this works in the form of layers
# 1. Data
# 2. Asthetics - variables on which the chart has to be created
# 3. Geometry - type of chart
# 4. Themes
# 5. Facet -- Break the chart based on a variable
# 6. Coordinates - x and Y coordinates


install.packages("ggplot2")
library(ggplot2)

install.packages("ggplot2movies")
library(ggplot2movies)

View(movies)

# histogram with ggplot

ggplot(movies, aes(x=rating)) + 
  geom_histogram(fill="REd", color="Green", bins = 10) +
  ggtitle("Histogram")

# bin = 
# binsize = 

View(cars)

ggplot(mtcars, aes(x=factor(cyl))) + geom_bar(aes(fill=factor(gear)))

ggplot(mtcars, aes(x=factor(cyl))) + 
  geom_bar(aes(fill=factor(gear))) +
  scale_fill_manual(values=c("red", "yellow", "#462346"))

ggplot(mtcars, aes(x=factor(cyl))) + 
  geom_bar(aes(fill=factor(gear)), position = "dodge") +
  scale_fill_manual(values=c("red", "yellow", "#462346"))

ggplot(mtcars, aes(x=factor(cyl))) + 
  geom_bar(aes(fill=factor(gear)), position = "fill") +
  scale_fill_manual(values=c("red", "yellow", "#462346"))

par(mfrow=(c(1,3)))

# Scatter
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color=cyl))
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color=factor(cyl)))
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color=factor(cyl)), shape=3)
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color=factor(cyl), shape=factor(gear)))

ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point(aes(color=factor(cyl), shape=factor(gear)), size=3)


ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point(aes(color=factor(cyl), shape=factor(gear)), size=3) +
  theme_bw()


# facet_grid(r ~ C)
# r -- row
# c -- col


ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point() +
  facet_grid(factor(cyl)~.)

ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point() +
  facet_grid(.~factor(cyl))


ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point() +
  facet_grid(factor(gear)~factor(cyl))


# Coordinates

ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point() +
  xlim(c(3,5)) +
  ylim(c(10,30))

# Draw trend line

ggplot(mtcars, aes(x=wt, y=mpg)) + 
  geom_point() +
  geom_smooth(method="lm")


install.packages("plotly")
library(plotly)

ggplotly(ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point(aes(color=factor(cyl), shape=factor(gear))))

install.packages("esquisse")
library(esquisse)


dataset <- cars
esquisser()