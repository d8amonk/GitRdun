x_1 <- rnorm(1000,5,15)
x_2 <- rnorm(1000,5,1)
x_3 <- x_2*x_1

hist(x_1, col = 'grey')

true_error <- rnorm(1000,0,3)
true_b0 <- 1.1
true_b1 <- 8.2
true_b2 <- -3
true_b3 <- 37


y <- true_b0 + true_b1*x_1 +true_b2*x_2 + true_b3*x_3 + true_error
hist(y)

plot(x_1, y, pch = 20, col = 'red')

run1 <- lm(y ~ x_1 + x_2 + x_3)
run1
