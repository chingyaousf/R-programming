#Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).

A=matrix(c(2,0,1,3), ncol=2)
B=matrix(c(5,2,4,-1), ncol=2)
A
B
x<- A+B
x
y<- A-B
y

#Using the diag() function to build a matrix of size 4 with the following values in the diagonal 4,1,2,3.
diag(c(4,1,2,3))

#Generate the following matrix:
## [,1] [,2] [,3] [,4] [,5]
## [1,] 3 1 1 1 1
## [2,] 2 3 0 0 0
## [3,] 2 0 3 0 0
## [4,] 2 0 0 3 0
## [5,] 2 0 0 0 3

#create diagonal 3 with 5 rows and 5 columns
m<-diag(3, 5, 5)
m

#fist row 2:5 columns replace with 1
m[1,2:5] <- 1 
m
#fist column 2:5 rows replace with 2
m[2:5,1] <- 2
m
