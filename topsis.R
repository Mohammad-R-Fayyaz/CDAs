rm(list = ls())


d <- read.csv ("C:\\Users\\Fayyaz\\OneDrive\\Applications\\CV & Email\\Canada\\U of T\\Prof. Samin Aref\\analysis\\topsis\\topsis100.csv")
d1 <- as.matrix(d) 

w <- c(1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 1, 1, 1, 1)
i <- c("-", "-", "+", "-", "+", "-", "-", "+", "+", "+", "+", "+")

t <- topsis(d1, w, i)
t
write.csv(t,"C:\\Users\\Fayyaz\\OneDrive\\Applications\\CV & Email\\Canada\\U of T\\Prof. Samin Aref\\analysis\\topsis\\topsis10000.csv", row.names = FALSE)



d <- matrix(rpois(12, 5), nrow = 4)
w <- c(1, 1, 2)
i <- c("+", "-", "+")
topsis(d, w, i)