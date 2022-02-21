# Provide a data set
data("USArrests")
myData <- USArrests

# Test for generic functions
head(myData)

str(myData)

class(myData)

# Both use the print() function and are generic
USArrests
print(USArrests)


# Assign S3 to data with in data set
mys3 <- list(State = rownames(myData[1,]), Murder = myData[1,1], Assualt = myData[1,2], UrbanPop = myData[1,3], Rape = myData[1,4])
mys3

#Assign s4 to your data set
setClass("Crime", representation(State = "character", Murder = "numeric", Assualt = "numeric", UrbanPop = "numeric", Rape = "numeric"))
mys4 <- new("Crime", State = rownames(myData[1,]), Murder = myData[1,1], Assualt = myData[1,2], UrbanPop = myData[1,3], Rape = myData[1,4])
mys4

# Install needed packages
install.packages("pryr")
library(pryr)

# Use otype() to check what data type object is associated with.
otype(myData)

otype(mys3)

otype(mys4)

# Use class() to determine what data type an object is.
examp <- myData[2,2]
examp
class(examp)

# Generic function is an s3 related object that is a function that preforms a simple task by using a dispatcher such as UseMethod() to take an input and run it through a predefined method.


# Create an S3 object

s3 <- list(Country = "USA", State = "Florida", City = "Tampa")
s3

otype(s3)

# or 

s3_2.0 <- matrix(c(1, 2, 3, 4), nrow = 2)
s3_2.0

otype(s3_2.0)

# S4 object

setClass("location", representation(Country = "character", State = "character", City = "character"))
s4 <- new("location", Country = "USA", State = "Florida", City = "Tampa")
s4

otype(s4)
