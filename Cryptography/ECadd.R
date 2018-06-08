ECadd <- function (a,b) { # Not true addition, invented for EC. Could have been called anything.
  
  LamAdd = ((b[1]-a[1]) * modinv(b[0]-a[0],Pcurve)) %% Pcurve
  
  x = (LamAdd*LamAdd-a[0]-b[0]) %% Pcurve
  
  y = (LamAdd*(a[0]-x)-a[1]) %% Pcurve
  
  return (x,y)
}