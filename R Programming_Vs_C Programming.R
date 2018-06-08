x <- rnorm(5)
x

# R- specific program
for(i in x){
   print(i)
}

#conventional programming loop 
for(j in 1:length(x)){
  print(x[j])
}

#-------------------------- R vs C/Fortran ---------------------------
N <- 100

a <- rnorm(N)

b <- rnorm(N)

#Vectorized approach
system.time(c <- a*b)


#de Vectorized approach
d <- rep(NA,N) # Memomry allocation 

system.time(for(i in 1:N){
  d[i] <- a[i] * b[i]
})
