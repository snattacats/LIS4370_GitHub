
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bearine")
 
ABC <- c(4, 62, 51, 21, 2, 14, 15)

CBS <- c(12, 75, 43, 19, 1, 21, 19) 

 
Pres <- data.frame(Name, ABC, CBS)

head(Pres) 
str(Pres)
summary(Pres)

pres <- melt(Pres, id.var = "Name")

ggplot(pres, aes(x = Name, y = value, fill = variable)) + geom_bar(stat = "identity", position = "dodge") + 
  ggtitle("Political Pulling Results") + 
  labs(y = "Polling Numbers", x = "Presidential Candidates", fill = "News Source")
