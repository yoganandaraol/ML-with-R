# Matrix

mat<- matrix(1:25)
mat


mat2<- matrix(1:25, nrow=5)
mat2


mat3<- matrix(1:25, nrow=5, byrow=FALSE)
mat3


matrix()

vec <- c(21,24,26,89)
matrix(vec, nrow=2)

matrix(vec, ncol=4)

# byrow takes boolean value to arrange the matrix row wise or not
mat4 <- matrix(101:125, nrow=5)
mat4

rownames(mat4) <- c("Row_1", "Row_2","Row_3","Row_4","Row_5")
mat4

colnames(mat4) <- c("Wk1", "Wk2","Wk3","Wk4","Wk5")
mat4



# Slicking and Indexing
# Vector is an one dimensional array

mat4[2,3]
mat4[2,]
mat4[,4]
mat4[2][3] # NA
mat4[5,c(4,5)] # prints 4th and 5th Column vales in 5th row
mat4[c(1,5),c(4,5)] # prints 4th and 5th Column vales from 4th and 5th rows
