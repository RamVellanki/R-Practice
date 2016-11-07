#### BASIC MATRIX OPERATIONS####
#Defining matrix
mat = matrix(x, ncol=3) #Take 1 to 9 data and format into 3 cols
mat
matrow = matrix(x, nrow=3, byrow = T)
matrow


#Accessing matrix elements
mat[3,1]
mat[3,] #display all elements in column
mat[,] #display all elements equal to mat
mat[,-1] #exclude just first column and display all other
mat[c(1,2),3] #display row 1 and 2 from 3rd column
mat[-c(1,2),-c(2,3)]#exclude 1,2 row from 2,3 column, that leave 3,1
mat[c(1,2), 3] = c(13,16) #replace row 1, 2 from 3 column with the values

#Arithmetic opertations
mat+10 #Adds 10 to each element
mat-2 #Subtracts 2 from each element
mat*2 #Multiply each element with 2
mat/2 #Divide each element by 2

#Assigning names to cols and rows
dimnames(mat) = list(c('a','b','c'),c('x','y','z'))
#Displaying colnames
colnames(mat)
#Displaying rownames
rownames(mat)
#We can use colnames and rownames to change the col names and row names independently
colnames(mat) = c('col1','col2','col3')

#Dynamically adding row or col
x=c(2,2,2) #Create a vector
mat = rbind(mat,x)#rowbind: Adds x row to the matrix
col4 = c(1,1,1,1) #Create column vector
mat = cbind(mat,col4) #Use cbind

##### MATRIX ALGEBRA #####
A=matrix(1:9, nrow=3, byrow=T)
A
B=matrix(10:18, nrow=3, byrow=T)
B
A+B
A-B
######Multiplication#####
A*B #Multiply each element seperately
A%*%B #Actual matrix multiplication
X=matrix(x,nrow=3)
t(X) #Transpose of X
crossprod(X) #Transpose and multiply with the same
t(X)%*%X #This is equal to crossprod(X)
crossprod(A,B) #This is equal to transpose of A and then do matrix multiplication
t(A)%*%B #Same as above
diag(A) #Gives diagonal elements
diag(x=3) #Creates a matrix with only diagonal elements
diag(2,4) #Create 4x4 matrix with all diagonal elements value containing 2

#Inverse of matrix
A=matrix(c(2,3,1,5), nrow=2, byrow=T)
B=matrix(c(2,5), nrow=2)

solve(A,B) #Inverse A and then matrix multiply with B

#determinant of matrix
det(A) 

#Oter misc operations
rowSums(A) # Sum of rows
colSums(A) # Sum of Cols
rowMeans(A) #Calculate mean for each row
colMeans(B) #Calculate mean fore ach column
dim(A) #Dimension of matrix
nrow(A) #No of rows
ncol(A) #No of cols
