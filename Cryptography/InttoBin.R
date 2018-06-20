#incomplete #coercion is happeing after 42 characters. 
binary <- function(x) {
     i <- 0
     string <- numeric(256)
     while (x > 0) {
     string[256 - i] <- x %% 2
     x <- x %/% 2
     i <- i + 1 
     }
     first <- match(1, string)
     string[first:256] 
 }
