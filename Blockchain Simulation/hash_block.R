#Step2: Create a hash of the block

hash_block <- function(block){
  
  block$new_hash <- digest::digest(c(block$index,
                                     block$timestamp,
                                     block$data,block$previous_hash), 
                                     algo = "sha256")
  
  return(block)
}

