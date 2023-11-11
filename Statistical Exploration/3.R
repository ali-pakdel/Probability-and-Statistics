X = rep(0, 1000)
for (i in 0:1000)
{
  U = runif(1, 0, 1)
  X[i] = -1*log(U)
}
hist(X, freq = F)
