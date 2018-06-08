#Step1: Define Genesis Block 

block_genesis <-  list(index = 1,
                       timestamp = Sys.time(),
                       data = "Genesis Block",
                       previous_hash = "0000000000000000000000000000000000000000000000000000000000000000",
                       nonce = 1,
                       new_hash = "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f")


