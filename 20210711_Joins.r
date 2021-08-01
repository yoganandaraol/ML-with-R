ID<- c(1,2,3,4)
SName<- c("Sam","Harry","Rose","Leo")

DF_Names<- data.frame(ID, SName)
DF_Names

ID<- c(1,2,3,5)
CName<- c("Python","R","Tableau","Excel")
DF_Course<- data.frame(ID,CName)
DF_Course


#inner_join

library(dplyr)
inner_join(DF_Names,DF_Course, by="ID")

#left_join
left_join(DF_Names,DF_Course, by="ID")

#right_join
right_join(DF_Names,DF_Course, by="ID")

#full_join
full_join(DF_Names,DF_Course, by="ID")

#anti_join
anti_join(DF_Names, DF_Course, by="ID")


#semi_join
semi_join(DF_Names, DF_Course, by="ID") #Exclusively from Table1


SID<- c(1,2,3,5)
CNAme<- c("Python","R","Tableau","Excel")
DF_Course = data.frame(SID,CNAme)

DF_Course

# with different column names
inner_join(DF_Names, DF_Course, by=c("ID"="SID"))



