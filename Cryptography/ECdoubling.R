# This is called point doubling, also invented for EC.

ECdouble <- function(a){
Lam <- ((3*a[1]*a[1]+Acurve) * modinv((2*a[2]),Pcurve)) %% Pcurve
  x <- (Lam*Lam-2*a[1]) %% Pcurve
  y <- (Lam*(a[1]-x)-a[2]) %% Pcurve
  return (c(x,y))
}