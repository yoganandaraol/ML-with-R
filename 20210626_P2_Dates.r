Sys.Date()

# year-month-day

dob <- "17-Aug-1984"
class(dob)

# as.Date

# %d --- Day of the month
# %m --- month in number
# %b --- month in name (abbreviated)
# %B --- month in Full name
# %y --- year in 2 digits
# %Y --- year in 4 digits


dob <- as.Date("17-Aug-1984", format="%d-%B-%Y")
dob
class(dob)

date2 <- "Nov/2020/5"
date2 <- as.Date(date2, format="%b/%Y/%d")
date2

date3 <- "2020 15 11"
date3 <- as.Date(date3, format="%Y %d %m")
date3