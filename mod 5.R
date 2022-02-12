A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)

A
B

inA <- solve(A)
inB <- solve(B)
inA
inB


A <- matrix(rnorm(100, 24), nrow=10)  
B <- matrix(rnorm(1024, 1:1024), nrow =32)

A
B

inA <- solve(A)
inB <- solve(B)
inA
inB

