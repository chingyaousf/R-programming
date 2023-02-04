#Module 4 Assignment

Freq <- c(0.6,0.3,0.4,0.4,0.2,0.6,.3,0.4,0.9,0.2) # frequency of hospital visits by patients during 12 month period
BP <- c(103,87,32,43,59,109,78,205,135,178) # blood pressure of each individual patient 
First <- c(1,1,1,1,0,0,0,0,NA,1)# first doctor evaluation of BP, where 1=bad and 0=good
Second <- c(0,0,1,1,0,0,1,1,1,1) # second and final evaluation of BP, where 0=low and 1=high
Final <- c(0,1,0,1,0,1,0,1,1,1)
hospital.df <- data.frame(Freq,BP,First,Second,Final) # contain everything under hospital data.frame. 
hospital.df
class(hospital.df)

#boxplot
boxplot(hospital.df, xlab="observation",main=c("Hospital Checkup"),at = c(1,2,3,4,5),
        names = c("Freq", "BP", "First", "Second","Final"),ylab="value",horizontal = FALSE,
        notch=FALSE,col=(c("gold")),ylim = range(-10:200), dev.new())

boxplot(hospital.df$Freq,BP,First,Second,Final,main=c("Hospital Checkup"),at = c(1,2,3,4,5),
        names = c("Freq", "BP", "First", "Second","Final"), xlab="observation", 
        ylab="value",ylim = range(-10:200),horizontal = FALSE,notch=FALSE,col=(c("green")))

boxplot(data=Freq,BP,First,Second,Final,main=c("Hospital Checkup"),at = c(1,2,3,4,5),
        names = c("Freq", "BP", "First", "Second", "Final"),xlab="observation", 
        ylab="value",ylim = range(-10:200),horizontal = FALSE,notch=FALSE,dev.new(),col=(c("red")))

boxplot(hospital.df,data=hospital.df,main=c("Hospital Checkup"),at = c(1,2,3,4,5),names = c("Freq", "BP", "First", "Second", "Final"),xlab="observation", 
        ylab="value",ylim = range(-10:200),horizontal = FALSE,notch=FALSE,dev.new(),col=(c("blue")))

#histogram
hist(hospital.df$BP,main=c("Patient blood pressure"),xlab="value",col=(c("gray")))
hist(BP,main=c("Patient blood pressure"),xlab="value",col=(c("orange")))

#Mean of Blood Pressure (BP) and Final Decision Ratings
colMeans(hospital.df[,c(2,5)],na.rm = TRUE, dims = 1)
mean(hospital.df[,5],na.rm = TRUE)



