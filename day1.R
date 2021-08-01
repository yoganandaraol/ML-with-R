
# Combie vectors

v3 <- c(1,2,3,"A","B", 2.4)
v3


a <- 10
a


vect <- c(1,2,3,"A","B", 2.4, T, F)
vect

class(vect)


numVec <- c(1,2,3)
numVec

class(numVec)


boolVec <- c(T,F,F,F,T)
boolVec

class(boolVec)


employee <- c('Yoga', 'yog240@gmail.com')
names(employee) <- c('Name','E-Mail')

employee







country <- c("US", "UK", "IND", "AF", "AUS")

country[1]
country

country[c(1,4)]

country[c(1,14)]

# Slicing
vec <- c(1:10)
vec


vec[c(1:5)]
vec[c(3:15)] # vector with unknown index returns NA

vec[1:5]


# Create a vector with numbers between 50-100

vec5 <- c(50:100)
vec5


vec6 <- 50:100
vec6

vec6[10:20]

length(vec6)






























