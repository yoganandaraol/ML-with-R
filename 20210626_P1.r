seq(1,20,3)

floor(1.6) #1
floor(1.99999999999999) #1

ceiling(1.2) #2
ceiling(1.000000000000001) #2
ceiling(1.0000000000000001) #1

runif(10,1,2)
round(runif(10,1,2), 2)

vec <- floor(runif(10,20,30))
vec


covid_mat <- matrix(vec, byrow=T, nrow=2)
covid_mat

rownames(covid_mat) <- c("IND", "US")
colnames(covid_mat) <- c("Day 1","Day 2","Day 3","Day 4","Day 5")

covid_mat

# Row and Column Functions

rowSums(covid_mat)
colSums(covid_mat)


rowMeans(covid_mat)
colMeans(covid_mat)

# --------- Binding functions -------------
# rbind --> used to add a row
# cbind --> used to add a column


UK <- c(1,2,3,4,5)
covid_mat <- rbind(covid_mat, UK)
covid_mat

avg <- rowMeans(covid_mat)
avg

covid_mat <- cbind(covid_mat, avg)
covid_mat

covid_mat = round(covid_mat)
covid_mat

covid_mat = round(covid_mat,0)
covid_mat

# colnames(covid_mat)[,6] <- "Average"

# Delete a column
covid_mat <- covid_mat[c(1,3),]
covid_mat <- covid_mat[,1:5]
covid_mat


covid_mat[1,4] <- 37
covid_mat


colnames(covid_mat)[3] <- "New Day"
covid_mat


covid_mat <- covid_mat[, c(-2)]
covid_mat















