#import Dataset.
PepperPrice <- read.table(file.choose(),header=TRUE,sep=",")

#Compute the largest x y value used in the data.
max_x <- max(PepperPrice$time_series)
max_y <- max(PepperPrice$black, PepperPrice$white)

# Define colors to be used for black, white pepper.
plot_colors <- c("black", "red")

#R base graphics 
# plot black and white pepper prices separately using two plot calls.
x11()
plot(PepperPrice$time_series, PepperPrice$black, type = "p", col = plot_colors[1], 
     xlim = c(0, max_x), ylim = c(0, max_y), xlab = "time series", ylab = "Price (USD)/ton"
     ,main = "Pepper Prices Over Time",cex.main = 1.0, col.main = "red")
points(PepperPrice$time_series, PepperPrice$white, type = "p", col = plot_colors[2])
legend("topright", legend = c("Black", "White"), col = plot_colors, pch = 1)


#Using Lattice package in R
library(lattice)

# Define colors to be used for black, white pepper.
plot_colors <- c("blue", "red")
x11()
xyplot(black + white ~ time_series, data = PepperPrice, grid = TRUE, type = "p", 
       col = plot_colors, xlim = c(0, max_x), ylim = c(0, max_y), 
       xlab = "time series", ylab = "Price (USD)/ton", 
       auto.key = list(space = "top", columns = 2, cex = 0.8, col = c("blue", "red")), 
       main = "Pepper Prices Over Time")


#using ggplot2 package in R
library(ggplot2)

# Define colors to be used for black, white pepper.
plot_colors <- c("black", "red")

#using geom_point - point
x11()
ggplot(PepperPrice, aes(time_series, Price (USD)/ton)) +
  geom_point(aes(y = black, color = "black")) +
  geom_point(aes(y = white, color = "white"))+
  scale_color_manual(values = c("black", "red"))+
  theme(legend.position = c(.90, .80))+ 
  ggtitle("Pepper Prices Over Time")+
  theme(plot.title = element_text(size = 12, color = "darkblue", hjust = 0.5))

#using geom_smooth - Smoothed conditional means
ggplot(PepperPrice, aes(time_series, Price (USD)/ton)) +
  geom_smooth(aes(y = black, color = "black")) +
  geom_smooth(aes(y = white, color = "white"))+
  scale_color_manual(values = c("black", "red"))+
  theme(legend.position = c(.90, .80))+ 
  ggtitle("Pepper Prices Over Time")+
  theme(plot.title = element_text(size = 12, color = "darkblue", hjust = 0.5))

#using geom_count - Count overlapping points
x11()
ggplot(PepperPrice, aes(time_series, Price (USD)/ton)) +
  geom_count(aes(y = black, color = "black")) +
  geom_count(aes(y = white, color = "white"))+
  scale_color_manual(values = c("black", "red"))+
  theme(legend.position = c(.90, .80))+ 
  ggtitle("Pepper Prices Over Time")+
  theme(plot.title = element_text(size = 12, color = "darkblue", hjust = 0.5))


#using geom_path - Connect observations
x11()
ggplot(PepperPrice, aes(time_series, Price (USD)/ton)) +
  geom_path(aes(y = black, color = "black")) +
  geom_path(aes(y = white, color = "white"))+
  scale_color_manual(values = c("black", "red"))+
  theme(legend.position = c(.90, .80))+ 
  ggtitle("Pepper Prices Over Time")+
  theme(plot.title = element_text(size = 12, color = "darkblue", hjust = 0.5))

#using geom_bin2d - Heatmap of 2d bin counts
x11()
ggplot(PepperPrice, aes(time_series, Price (USD)/ton)) +
  geom_bin2d(aes(y = black, color = "black")) +
  geom_bin2d(aes(y = white, color = "white"))+
  scale_color_manual(values = c("black", "red"))+
  theme(legend.position = c(.10, .68))+ 
  ggtitle("Pepper Prices Over Time")+
  theme(plot.title = element_text(size = 12, color = "darkblue", hjust = 0.5))

