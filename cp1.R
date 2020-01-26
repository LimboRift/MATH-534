#math534 cp1
r = 1
N = 10^8
x = runif(N,-r,r)
y = runif(N,-r,r)
p = sum((x^2+y^2)<1)/N
epi = p*4
epi
abs(epi-pi)/pi
