rm(list = ls())


d <- read.csv ("C:\\Users\\analysis\\topsis\\topsis100.csv")
d1 <- as.matrix(d) 

w <- c(1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 1, 1, 1, 1)
i <- c("-", "-", "+", "-", "+", "-", "-", "+", "+", "+", "+", "+")

t <- topsis(d1, w, i)
t
write.csv(t,"C:\\Users\\analysis\\topsis\\topsis10000.csv", row.names = FALSE)
