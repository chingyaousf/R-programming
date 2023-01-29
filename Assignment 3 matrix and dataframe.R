# Module # 3 Introduction to data" frame_Assignment 3

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC_political_poll_results <-c(4, 62, 51, 21, 2, 14, 15)
NCB_political_poll_results <- c(12, 75, 43, 19, 1, 21, 19)

#Matrix
pools <- cbind (Name, ABC_political_poll_results, NCB_political_poll_results)
pools  #all elements will be coerced to the character not numerical.
class(pools)  #check data type which is matrix.
mean(pools)  #calculate for mean, but error.
colMeans(pools)  #calculate for colMeans, but error.
rowMeans(pools)  #calculate for rowMeans, but error.
y<-pools[,-1]  #remove first column which is character that causes the error for mean, colMeans and rowMean calculation.
y  #the matrix without first column.
rowMeans(y)  #calculate for rowMeans, but error because the numbers in the matrix all treated as characters.

#dataframe
pools.df <- data.frame(Name, ABC_political_poll_results, NCB_political_poll_results)
pools.df
class(pools.df) #check data type which is matrix.
mean(pools) #calculate for mean, but error. 
colMeans(pools)  #calculate for colMeans, but error.
rowMeans(pools)  #calculate for rowMeans, but error.
x<- pools.df[,-1]  #remove first column which is character that causes 
#the errors for mean, colMeans and rowMean calculation. 
x  #the dataframe without first column.
rowMeans(x)  #calculate for each rowMeans and it's successful.

#name and mean 
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
Mean_political_poll_results <-c(rowMeans(x))  #rowMeans(x) as list
Mean_political_poll_results
Mean_pools <-rbind (Name, Mean_political_poll_results)  # create matrix by row.
Mean_pools
Mean_pools <-cbind (Name, Mean_political_poll_results)  # create matrix by column.
Mean_pools
Mean_pools.df1 <- as.data.frame(Mean_pools)  #convert matrix Mean_pools to dataframe. 
Mean_pools.df1
Mean_pools.df2 <- data.frame(Name, Mean_political_poll_results)  #create dataframe by column.
Mean_pools.df2
Mean_pools.df3 <- data.frame(Name, Mean_political_poll_results,nrow = 2, byrow = T)  #create dataframe by row by is not successful??
Mean_pools.df3

