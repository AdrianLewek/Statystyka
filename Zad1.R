#zadanie 1
wektorA = c(1, 4, 6, 13, -10)
wektorB = seq(from=1, to=101, by=2)
wektorC = rep(c(4,7,9), each=4)
wektorD = c("czy", "to", "jest", "wektor z NA")
wektorE = rep(c(4,7,9), 4)
#tworzenie listy z wektorów
wektory = list(wektorA, wektorB, wektorC, wektorD, wektorE)
names(wektory) = c("wektorA", "wektorB", "wektorC", "wektorD", "wektorE")
#funkcje na wektorach

wyniki = list(
  wektory = wektory,
  dlugosc = sapply(wektory, length),
  typ = sapply(wektory, typeof),
  maximum = sapply(wektory, max),
  minimum = sapply(wektory, min),
  sortowanie = sapply(wektory, sort)
)
wyniki
