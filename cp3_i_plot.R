library(rgl)

lehmer_rng = function(n,m,a,b,x0){
  r = NULL
  for (i in 1:n){
    r = c(r, x0)
    x0 = ((a*x0+b) %% m )
  }
  return(r)
}

m = 2^31
x0 = 1
a = 2^16+3
b = 0
n = 5000
res_randu = lehmer_rng(n,m,a,b,x0)/m
hist(res_randu, main = 'Histogram of obtained series', xlab = 'Value of R_k')
cc = matrix(0,length(res_randu)-1,2)
cc = matrix(0,length(res_randu)-2,3)
for (i in 1:(length(res_randu)-2)){
  cc[i,1] = res_randu[i]
  cc[i,2] = res_randu[i+1]
  cc[i,3] = res_randu[i+2]
}
plot3d(cc[,1:3], main = '3D scatter plot of R_(k-1), R_k, R_(k+1) from RANDU RNG',
              xlab = 'R_(k-1)',
              ylab = 'R_k',
              zlab = 'R_(k+1)')
