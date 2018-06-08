#Step3: Proof of Work Alogrithm

proof_of_work <- function(last_nonce){
  nonce <- 0
  check_nonce <- FALSE 
  current_target <- "0000"
  while (check_nonce == FALSE)
  {
    hash_difficulty = digest::digest(nonce^2 - last_nonce^2,algo = "sha256")
    if (substr(hash_difficulty,start = 1,stop = 4) == current_target & (nonce != last_nonce)){
      check_nonce = TRUE
    }
    else { nonce = nonce + 1 
    }
  }
  return(list(nonce,hash_difficulty))
}
