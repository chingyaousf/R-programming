#Find the value of inverse of a matrix, determinant of a matrix by using the following values:
A=matrix(1:100, nrow=10)
B=matrix(1:1000, nrow=10)

A <- matrix(1:100, nrow = 10)  
B <- matrix(1:1000, nrow = 10)

solve(A)
solve(B)

det(A)
det(B)

#since cannot solve with the way above, using the method as following.
#transport A and B.
t(A) 
t(B)

#create two vector a and b.
a<-c(1:2)
b<-c(1:4)

#multiply matrices with vectors a and b.
x<-c(a*A)
y<-c(b*B)

#reassign the vectors a and b to equal the number of rows and columns for the for the corresponding matrix.
a<-c(1:10)
b<-c(1:100)

#multiple the matrix by matrix
A%*%a
B%*%b

#inverse the matrix
s<- matrix(2:5,nrow = 2)

solve(s)
det(s)






