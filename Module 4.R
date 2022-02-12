library(ggplot2)
library(gdata)
library(reshape2)
library(gridExtra)



Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
FirstD <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
SecondD <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalD <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

hospital <- data.frame(Frequency, BP, FirstD, SecondD, FinalD)
hospital


hist1 <- ggplot(hospital, aes(x = Frequency)) + geom_histogram(fill = "white", color = "black") + 
  ggtitle("Histogram of Frequency")

hist2 <- ggplot(hospital, aes(x = BP)) + geom_histogram(fill = "white", color = "black") + 
  ggtitle("Histogram of Blood Pressure")

hist3 <- ggplot(hospital, aes(x = FirstD)) + geom_histogram(fill = "white", color = "black") + 
  ggtitle("Histogram of First Docator's Checks")

hist4 <- ggplot(hospital, aes(x = SecondD)) + geom_histogram(fill = "white", color = "black") + 
  ggtitle("Histogram of Second Doctor's Checks")

hist5 <- ggplot(hospital, aes(x = FinalD)) + geom_histogram(fill = "white", color = "black") + 
  ggtitle("Histogram of Final Decisions")

his.hospital <- grid.arrange(hist1, hist2, hist3, hist4, hist5)

melt()


box1 <- ggplot(hospital, aes(x = Frequency, y = factor(0))) + geom_boxplot() + ggtitle("Boxplot of Frequency")

box2 <- ggplot(hospital, aes(x = BP, y = factor(0))) + geom_boxplot() + ggtitle("Boxplot of BloodPressure")

box3 <- ggplot(hospital, aes(x = FirstD, y = factor(0))) + geom_boxplot() + ggtitle("Boxplot of First Doctor's Checks")

box4 <- ggplot(hospital, aes(x = SecondD, y = factor(0))) + geom_boxplot() + ggtitle("Boxplot of Second Doctor's Checks")

box5 <- ggplot(hospital, aes(x = FinalD, y = factor(0))) + geom_boxplot() + ggtitle("Boxplot of Final Decsions")

box.hospital <- grid.arrange(box1, box2, box3, box4, box5)
