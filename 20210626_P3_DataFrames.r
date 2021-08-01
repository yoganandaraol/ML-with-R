# Data Frames

# This is 2 D way of storing the data
# In the dataframe you can store the data of different data types

Name <- c("Harry", "Tom", "Jack")
age <- c(31,32,44)
IsMale <- c(T, T, F)



DF <- data.frame(Name, age, IsMale)
class(DF)
DF

data()

iris

# useful functions on data frames

# View() -- helps to view the output in tabular form
View(DF)
View(iris)

# str -- gives the structure of dataframe
str(DF)
str(iris)


# nrow -- gives number of rows
nrow(DF)
nrow(iris)


# ncol -- gives number of columns
ncol(DF)
ncol(iris)

# head -- returns top 6 rows (default)
head(iris)
head(iris, 10)
View(head(iris, -10)) # Excludes last 10 rows

# tail -- gives bottom 6 rows (default)
tail(iris)
tail(iris, 10)
View(tail(iris, 10)) 
View(tail(iris, -10)) # Excludes top 10 rows
