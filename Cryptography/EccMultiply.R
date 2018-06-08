EccMultiply <- function(genpoint,privatekey){

  if (privatekey == 0 | privatekey >= N) stop('Invalid Private Key') 
  
  binprivatekey <- binary(privKey)
  binprivatekey
  
  Q <- genpoint 
  
  for(i in 1:length(binprivatekey)){
  Q <- ECdouble(Q)
    if(binprivatekey[i] == 1){
      Q <- ECadd(Q,genpoint)
    }
  }
  return(Q)
}