prime_num <- 13

x <- 1:prime_num

y <- 1:prime_num

y1 <- numeric(0)

for(i in 1:length(x)){
  for(j in 1:length(y)){
    if((y[j]^2 - x[i]^3 - 7) %% prime_num == 0){
      y1[j] <- y[i]
    }
  }
}

y <- y1[!is.na(y1)]
plot(y,x,type = "p",main="Elliptical Curve on Prime Number-17 Field")
grid()
