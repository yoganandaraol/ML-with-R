install.packages("readxl")

library(readxl)
library(dplyr)

setwd("D:/Practice/R")
getwd()
Orders <- read_excel("sample - Superstore.xls", sheet="Orders")
Returns <- read_excel("sample - Superstore.xls", sheet="Returns")
People <- read_excel("sample - Superstore.xls", sheet="People")


# extract the complete orders that were returned
inner_join(Orders, Returns, by="Order ID") %>% View()

View(Returns)
# calculate sales lost because of orders returned
inner_join(Orders, Returns, by="Order ID") %>% summarise(Sales_Lost=sum(Sales))


# calculate the actual sales
anti_join(Orders, Returns, by="Order ID") %>% summarise(Sales_Actual=sum(Sales))
