library(digest)

#STEP1: set the limit to 2^256

max.decimal <- format(2^256,scientific = FALSE)
max.decimal

#STEP2: Generate a random number between 0 to 2^256

random.number.decimal <- runif(1,0,as.numeric(max.decimal))
format(random.number.decimal,scientific = FALSE)

#STEP3: hash the random number using sha256 function

private.key.haxadecimal <- digest(random.number.decimal,algo="sha256")
private.key.haxadecimal


