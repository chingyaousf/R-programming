#My code
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

myMean <- function(assignment2) {
S = sum(assignment2)
L = length(assignment2)
M = S/L
S = c("Sum is:", S)
L = c("Length is:", L)
M = c("Mean is:", M)
print(S, quote = FALSE)
print(L, quote = FALSE)
print(M, quote = FALSE)
}
myMean (assignment2)

#Instructor's code
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) { return(sum(assignment2)/length(assignment2)) }
myMean (assignment2)

assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
myMean <- function(assignment2) { (sum(assignment2)/length(assignment2)) }
myMean (assignment2)

#Both codes are worked. Instructor's code in the expression function return can be removed and has the same result.
