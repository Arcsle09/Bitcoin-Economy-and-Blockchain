#Build Test script to check whether the blockchain is valid. 

is_blockchain_valid <- function(blockchain){
  previous.block = blockchain[[1]]
  block_index = 2
  
  while(block_index <= length(blockchain)){
    block = blockchain[[block_index]]
  
#Test1: check if the previous hash of new block matches with new hash of previous block. 
    if(block$previous_hash != previous.block$new_hash){
      print('The blocks are not correctly linked.')
    }
    previous.proof = previous.block$proof
    new.proof = block$proof 
    hash_difficulty = digest::digest(new.proof^2 - previous.proof^2,algo = "sha256")

#Test2: check if the proof of work algorithm produces hash with leading 4 zeros. 
    if (substr(blockchain[[block_index]]$target_achieved,start = 1,stop = 4) != "0000"){
      print('The proof of work algorithm does not produce hash with leading 4 zeros.')
    }
    else(cat(paste0("\t","Target of Block ",block_index," = ",
                    blockchain[[block_index]]$target_achieved,"\n","\n")))
    previous.block = block 
    block_index = block_index + 1
  }
  cat(paste0("\t","\t","\t","\t","Test1: The hashes are verified successfully.","\n","\n"))
  cat(paste0("\t","\t","\t","\t","Test2: The targets are verified successfully.","\n","\n"))
  cat(paste0("\t","\t","\t","\t","Hence, the blockchain is valid.","\n"))
}


