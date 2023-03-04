x=read.table(file.choose(),header=TRUE,sep=",")
x
str(x)
install.packages("plyr")
library(plyr)
y = ddply(x,"Sex",transform, Grade.Average=mean(Grade))
y
write.table(y,"Sorted_Average")
read.table("Sorted_Average", header = TRUE)
readLines("Sorted_Average")

write.table(y,"Sorted_Average",sep=",")
read.table("Sorted_Average", header = TRUE)
readLines("Sorted_Average")

newx = subset(x,grepl("[iI]",x$Name))
write.table(newx,"DataSubset",sep=",")
read.table("DataSubset", header = TRUE)
readLines("DataSubset")



