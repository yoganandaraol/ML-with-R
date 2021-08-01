# install bit wise operators 
install.packages("bitops")

intToBits(2) # returns 32 bit integer value

as.integer(intToBits(2)) # [1] 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
as.integer(intToBits(3)) # [1] 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
# ---------------------------------------------------------------------------------------------
# Bit Wise And Opertor   # [1] 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
# ---------------------------------------------------------------------------------------------

# bit wise operations with package
print(bitAnd(3,2))


# loading the dplyr (data manipulations) library
library(dplyr)

# select
# filter
# arrange
# distinct

car <- mtcars

# slice - this function gives you bunch of rows from the dataset

slice(car, 3:7)
slice(car, 3,4,2,1) # slicing specific rows

# mutate : this is a fucntion used to add a calculated feild
mutate(car, performance=mpg/wt) # in memeory calculations
# to add a new column assign to it
car <- mutate(car, performance=mpg/wt)
View(car)



# Transmute : This function also performs caluclations but this will supress remaining columns
transmute(car, someCalc=disp/hp)
car.someCalc = transmute(car, someCalc=disp/hp)
View(car.someCalc)
View(car)


# summarise used for aggregations
summarise(car, mean(mpg))
summarise(car, mean(mpg), min(mpg), max(mpg), median(mpg))


# group_by3

xyz<- head(car)

summarise(group_by(car, cyl), mean(mpg))


View(iris)

irisDs <- iris

summarise(group_by(iris, Species), AVG_SepalLength=mean(Sepal.Length), AVG_PetalLength=mean(Petal.Length))
View(summarise(group_by(iris, Species), AVG_SepalLength=mean(Sepal.Length), AVG_PetalLength=mean(Petal.Length)))


# sample_n : This function gives n number of sample data (randomly choosen)

sample_n(car, 5)


# car dataset :-- mpg, wt, cyl, performance
# output must be sorted by mpg in ascending order

a <- select(car, mpg, wt, cyl, performance)
arrange(a, mpg)


arrange(select(car, mpg, wt, cyl, performance), mpg)


head(arrange(select(car, mpg, cyl, performance, wt), desc(wt)))
head(arrange(select(car, mpg, cyl, performance, wt), desc(wt)),5)

arrange(sample_n(select(car, mpg, cyl, performance, wt), 5), desc(wt))


# pipe operator %>%

%>% | 
  
  car %>%select(car, mpg, cyl, performance, wt) %>% sample_n(5) %>% arrange(desc(wt))

  car %>%select(car, mpg, cyl, performance, wt) %>% sample_n(5) %>% arrange(desc(wt))

     