#Extended Euclidean Algorithm/'division' in elliptic curves
modinv <- function(a,n=PCurve){
  lm <- 0 
  hm <- 1
  low <- a %% n
  high <- n
  while (low > 1){
    ratio <- high/low
    nm <- (hm-lm)*ratio
    new <- (high - low)*ratio 
   lm <- nm
   low <- new
   hm <- lm
   high <- low
  }
  return(lm %% n)
}
