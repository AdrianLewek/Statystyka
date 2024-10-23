car <- mtcars[,1:7]
head(car, 2)
srednia <- 0
for (j in 1:ncol(car)) {
  srednia[j] <- mean(car[,j]) 
}
srednia



#zad 2

oceny <- data.frame(ocenaNum = sample(c(2:5, 3.5, 4.5 ), 100, replace = TRUE))
oceny1 <- ""
oceny2 <- ""
for (k in 1:length(oceny$ocenaNum)) {
  if (oceny$ocenaNum[k] > 2){
    oceny1[k] <- "pozytywna"
  } else{
    oceny1[k] <- "negatywna"
  }
  if (oceny$ocenaNum[k] == 2) {oceny2[k] = "ndst"}
  else if (oceny$ocenaNum[k] == 3) {oceny2[k] = "dost"}
  else if (oceny$ocenaNum[k] == 3.5) {oceny2[k] = "dost +"}
  else if (oceny$ocenaNum[k] == 4) {oceny2[k] = "dob"}
  else if (oceny$ocenaNum[k] == 4.5) {oceny2[k] = "dob +"}
  else if (oceny$ocenaNum[k] == 5) {oceny2[k] = "bdb"}
  else if (oceny$ocenaNum[k] == 5.5) {oceny2[k] = "bdb +"}
  
}
oceny$zdane <- oceny1
oceny$wynik <- oceny2
oceny



#zad3
WspolRozklad <- function (x){
  wynik <- 0
  N <- length(x)

  if(N > 3){
    sk <- (N/((N-2)*(N-1)))*((sum(x-mean(x)^3))/(sd(x)^3))
    k <- ((N*(N+1))/(N-1)*(N-2)*(N-3))*((sum(x-mean(x))^4)/(var(x))^2) - 3*((N-1)^2)/((N-2)*(N-3))
    wynik$sk <-  sk
    wynik$k <- k
  }
  return(wynik)
}

WspolRozklad(x = c(1,2,3,5))
#zad4

BoxaCoxa <- function(y, lambda) {
  if(y< 0 && lambda < 0) wynik <- NA
  else if (lambda == 0) wynik <- log(y)
  else wynik <- sign(y)*(((abs(y)^lambda) - 1)/lambda)
  return(wynik)
  
}
BoxaCoxa(exp(1),0)

