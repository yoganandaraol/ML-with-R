# Basic Programming

# ----------------------- If else conditions -------------------

temp <- 30

if(temp < 25)
  print("Cold")
else
  print("Hot")


temp <- 25

if(temp < 20){
  print("Cold")
}else if (temp < 30){
  print("Moderate")
}else{
  print("Hot")
}


# write a code to check number is even

a <- 20

#print(a%%2)

if (a%%2 == 0)
  print("Even")
else
  print("Odd")


num <- readline(prompt = "Enter the num - ")
#print(typeof(num))
# Datataype conversion
num<- as.numeric(num)
print(typeof(num))


# ----------------------- LOOPS -------------------------------------------

names<- c('R', 'Python', 'SAS')

for(name in names){
  print(name)
}

marks <- c(24, 25, 20, 19, 21)
for(mark in marks){
  # print(typeof(mark))
  print(mark)
}

for(i in 1:10)
  print(i*5)

# Concatination

# paste() - with spaces
# paste0() - without spaces

vec <- c(1:10)
for (i in vec){
  print(paste("5 *", i, "=", i*5))
}


vec <- c(1:10)
for (i in vec){
  print(paste0("5 *", i, "=", i*5))
}


car <- mtcars
View(car)

for(r in 1:nrow(car)){
  #print(car$mpg[r])
  if(car$mpg[r] > 30){
    car$status[r] = "Great"
  }else if(car$mpg[r] >= 20){
    car$status[r] = "Moderate"
  }else{
    car$status[r] = "Low"
  }
}

x<-0
while(x<=5){
  print("Hello")
  x<-x+1
}

r=1
while(r < nrow(car)){
  print(car[r,])
  r = r+1
}


