A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A
B

A + B
A - B


diag.m <- diag(x = c(4, 1, 2, 3), ncol = 4 )
diag.m

que3 <- diag(3 ,nrow = 4) 
fix(que3)
que3

que3 <- diag(3 ,nrow = 4) 
que3[1, 2:4] <- 1
que3[2:4, 1] <- 2
que3
