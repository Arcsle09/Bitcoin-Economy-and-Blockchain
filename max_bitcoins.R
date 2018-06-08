# Original block reward for miners was 50 BTC
# start_block_reward = 50
# 210000 is around every 4 years with a 10 minute block interval
# reward_interval = 210000(  6 blocks per hour
#                          * 24 hours per day
#                          * 365 days per year
#                          * 4 years per cycle)

max_bitcoins <- function(reward_interval){
  initial_reward <- 50 * (10^8) # 50,0000,0000 Satoshis
  total <- 0
  while(initial_reward > 0){
  total <- total + (reward_interval * initial_reward)
  initial_reward  <- initial_reward/2 #Geometric Series
  }
  cat("Hence, maximum",format(total/(10^8),scientific = FALSE),"bitcoins can be generated.")
}

#-----------------output--------------#
#max_bitcoins(210000) -- Calling above function

#Hence, maximum 21000000 bitcoins can be generated.