setwd("D:/Practice/R")
data = read.csv("Salary_Data.csv")
head(data)

# install.packages("caTools")
library(caTools)

set.seed(123)

split=sample.split(data$Salary, SplitRatio = 2/3)

Train = subset(data, split==T)
Test = subset(data, split==F)

#Build the model

model= lm(formula = Salary~., data = Train)

summary(model)
#Predictions


y_pred= predict(model, newdata = Test)
y_pred



ggplot(data, aes(x=Salary, y=YearsExperience)) + 
  geom_point()  +
  geom_smooth(method= "lm")