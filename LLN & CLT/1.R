m10unif <- replicate(10,runif(10))
e10unif <- eigen(m10unif)
plot(e10unif$values)

m50unif <- replicate(50,runif(50))
e50unif <- eigen(m50unif)
plot(e50unif$values)

m100unif <- replicate(100,runif(100))
e100unif <- eigen(m100unif)
plot(e100unif$values)



m10norm <- replicate(10,rnorm(10, 0, 1/10))
e10norm <- eigen(m10norm)
plot(e10norm$values)

m50norm <- replicate(50,rnorm(50, 0, 1/50))
e50norm <- eigen(m50norm)
plot(e50norm$values)

m100norm <- replicate(100,rnorm(100, 0, 1/100))
e100norm <- eigen(m100norm)
plot(e100norm$values)





vec5 <- vector()
for (i in 1:100)
{
  rn5 = rnorm(25, 0, 1/5)
  m_5 <- matrix(rn5, 5, 5)
  e_5 <- eigen(m_5)
  vec5 <- c(vec5, e_5$values)
}
plot(vec5)

vec15 <- vector()
for (i in 1:100)
{
  rn15 = rnorm(225, 0, 1/15)
  m_15 <- matrix(rn15, 15, 15)
  e_15 <- eigen(m_15)
  vec15 <- c(vec15, e_15$values)
}
plot(vec15)

vec60 <- vector()
for (i in 1:100)
{
  rn60 = rnorm(3600, 0, 1/60)
  m_60 <- matrix(rn60, nrow = 60, ncol = 60)
  e_60 = eigen(m_60)
  vec60 <- c(vec60, e_60$values)
}
plot(vec60)

vec100 <- vector()
for (i in 1:100)
{
  rn100 = rnorm(10000, 0, 1/100)
  m_100 <- matrix(rn100, nrow = 100, ncol = 100)
  e_100 = eigen(m_100)
  vec100 <- c(vec100, e_100$values)
}
plot(vec100)
