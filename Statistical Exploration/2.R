U = runif(1, 0, 1)
X = U < 0.6

B = rep(0, 100)
for (i in 0:100)
{
  U1 = runif(10, 0, 1)
  B[i] = sum(U1 < 0.6)  
}

print(mean(B))
print(var(B))