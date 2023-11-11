s1 = rnorm(10000, 1, 1)
hist(s1, freq = F, prob = T , breaks = "FD", col = "gray")
lines(seq(0, 4, 0.00001), dexp(seq(0, 4, 0.00001), rate = 1), col = "red", lwd = 3)
curve(dnorm(x, mean=1, sd=1/1),  col="blue", lwd = 3, add=T)

s10 = rnorm(10000, 1, 1/10)
hist(s10, freq = F, prob = T, breaks = "FD", col = "gray")
lines(seq(0, 1.4, 0.00001), dexp(seq(0, 1.4, 0.00001), rate = 1), col = "red", lwd = 3)
curve(dnorm(x, mean=1, sd=1/10),  col="blue", lwd = 3, add=T)

s100 = rnorm(10000, 1, 1/100)
hist(s100, freq = F, prob = T, breaks = "FD", col = "gray")
lines(seq(0, 1.2, 0.0001), dexp(seq(0, 1.2, 0.0001), rate = 1), col = "red", lwd = 3)
curve(dnorm(x, mean=1, sd=1/100),  col="blue", lwd = 3, add=T)

s1000 = rnorm(10000, 1, 1/1000)
hist(s1000, freq = F, breaks = "FD", col = "gray")
lines(seq(0, 2, 0.01), dexp(seq(0, 2, 0.01), rate = 1), col = "red", lwd = 3)
curve(dnorm(x, mean=1, sd=1/1000),  col="blue", lwd = 3, add=T)

s10000 = rnorm(10000, 1, 1/10000)
hist(s10000, freq = F, breaks = "FD", col = "gray")
lines(seq(0, 2, 0.01), dexp(seq(0, 2, 0.01), rate = 1), col = "red", lwd = 3)
curve(dnorm(x, mean=1, sd=1/10000),  col="blue", lwd = 3, add=T)





v <- vector()
for (i in 1:1000)
{
  s <- rnorm(10000, 1, sqrt(1/i))
  v <- c(v, var(s))
}
plot(v, xlab = "n", ylab = "var of samples", col = "dark blue")

