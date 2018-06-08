#Step4:A function that takes the previous block and generates a new block

gen_new_block <- function(previous_block){
  
  #Proof of Work
  new_proof <- proof_of_work(previous_block$nonce)
  
  #Create new Block
  new_block <- list(index = previous_block$index + 1,
                    timestamp = Sys.time(),
                    data = paste0("this is block ", previous_block$index + 1),
                    previous_hash = previous_block$new_hash,
                    nonce = new_proof[[1]],
                    target_achieved = new_proof[[2]])
  
  #Hash the new Block
  new_block_hashed <- hash_block(new_block)
  
  return(new_block_hashed)
}
