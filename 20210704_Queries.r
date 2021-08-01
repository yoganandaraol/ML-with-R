car <- mtcars
View(car)
summary(car)
select(car,mpg,cyl,disp)
select(car, 1,2,3)
colnames(car)


select(car, 3,2,1)

View(filter(car, mpg>=20))
View(filter(car, mpg>=20 , cyl==4))
View(filter(car, mpg>=20 & cyl==4))
View(filter(car, mpg>=20 | cyl==4))

View(arrange(car, desc(mpg)))

View(arrange(car, cyl, desc(mpg))) # By default sorting is ascending

distinct(car, cyl)


cars <- mtcars
View(cars)
nrow(cars)
ncol(cars)
summary(cars)
View(summary(cars))


select(cars, mpg, cyl, disp)
select(cars, 1, 2, 3, 4, 11)

# ------------------------------------------


