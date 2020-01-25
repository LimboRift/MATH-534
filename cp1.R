#math534 cp1
r = 1
n1 = 1
n2 = 100000
p = matrix(0,n2-n1+1,1)
timestamp()
for (N in n1:n2) {
  x = runif(N,-r,r)
  y = runif(N,-r,r)
  p[N-n1+1] = sum((x^2+y^2)<1)/N
}
timestamp()
epi = p*4
plot(epi-pi, pch =16, cex = .1, ylim = c(-.5,.5), main = 'Residual of estimated Pi value',
     xlab = "Sample size", ylab = "Residual")
abline(h=0)
mean(epi[50000:100000])
