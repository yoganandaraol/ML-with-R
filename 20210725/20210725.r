library(dplyr)
library(psych)
library(vtree)
library(ggplot2)

setwd("D:/Practice/R/20210725")


dataset = read.csv("diabetes.csv")

#View the dataset
View(dataset)

# Lets have a look at the head of the data.
head(dataset)

# Structure of dataset
str(dataset)
glimpse(dataset)


# Details or summary of dataset
summary(dataset)
describe(dataset)


# count of columns
dim(dataset)

numCols = dim(dataset)[2]
numCols

#count missing values in each column
vector_NAs = rep(0, numCols)
vector_NAs

for (i in 1:numCols) {
  vector_NAs[i] = sum(is.na(dataset[,i]))
}

vector_NAs

# drop columns
dataset = dataset[,-c(15,16)]
print(dim(dataset))


plot(dataset$glyhb)

plot(dataset$stab.glu)

plot(dataset$age)


barplot(table(dataset$gender))

ggplot(dataset, aes(x=gender)) + 
  geom_bar()

ggplot(dataset, aes(x=frame)) +
  geom_bar()


# multi variant 

plot(dataset$glyhb, dataset$stab.glu)


ggplot(dataset, aes(x=stab.glu, y=glyhb, color=diagnosis)) +
  geom_point() +
  geom_smooth(method="lm")



# Picking numerical variables
dataset_numeric = dataset[,-c(7,9, 12, 18)]
View(dataset_numeric)


par(mfrow=c(1,1))
# make all histogram and bar plots in one go

for (i in 2:14) {
  hist(dataset_numeric[,i], main=names(dataset_numeric)[i])
}

par(mfrow=c(2,3)) # put 2 figs in a row and 3 figs in cols
# make all histogram and bar plots in one go

for (i in 2:14) {
  hist(dataset_numeric[,i], main=names(dataset_numeric)[i])
}
