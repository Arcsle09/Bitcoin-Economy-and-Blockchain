#Step5: Generate a BlockChain

blockchain <- list(block_genesis)

previous_block <- blockchain[[1]]

# How many blocks should we add to the chain after the genesis block
num_of_blocks_to_add <- 5

#printing the Genesis(First) block
(cat(paste0("Block ", block_genesis$index, " has been mined manually", "\n",
                "\t", "Time Stamp: ",block_genesis$timestamp,"\n",
                "\t", "nonce: ",block_genesis$nonce, "\n",
                "\t", "Previous Hash: ",block_genesis$previous_hash,"\n",
                "\t", "New Hash: ",block_genesis$new_hash,"\n","\n")))


# Add blocks to the chain
for (i in 1: num_of_blocks_to_add){
  block_to_add <- gen_new_block(previous_block) 
  blockchain[i+1] <- list(block_to_add)
  previous_block <- block_to_add
  
  (cat(paste0("Block ", block_to_add$index, " has been mined","\n",
                   "\t", "Time Stamp: ",block_to_add$timestamp,"\n",
                   "\t", "nonce: ", block_to_add$nonce, "\n",
                   "\t", "Target_Achieved: ",block_to_add$target_achieved,"\n",
                   "\t", "Previous Hash: ", block_to_add$previous_hash,"\n",
                    "\t", "New Hash: ",block_to_add$new_hash,"\n","\n")))
}

