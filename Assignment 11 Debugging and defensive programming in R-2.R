data <- matrix(c(1, 2, 3, 4, 5, 20, 30, 40, 50), ncol = 3)

tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] & tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } 
  return(outlier.vec) }

tukey_multiple(data)

# Search for 'tukey.outlier' function in the help files
help.search("tukey.outlier")

traceback()


debug(tukey_multiple)
tukey_multiple(data)

install.packages("outliers")
library(outliers)

# Search for 'tukey.outlier' function in the help files
help.search("tukey.outlier")


