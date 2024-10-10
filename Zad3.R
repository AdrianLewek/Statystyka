#zadanie 3
r <- 0.05 #oprocentowanie roczne
rr <- 1+r/12
K <- 300000 #kwota kredytu
L <- 20 #ile lat
N <- 12*L #liczba rat (ile miesięcy)
n <- 1:N #wektor zawierający kolejne okresy
rataKredytu <- K*rr^N*(rr-1)/(rr^N-1)
zadluzenie <- K*(rr^N-rr^n)/(rr^N-1)
odsetki <- K*(rr^N-rr^(n-1))/(rr^N-1)*(rr-1)
rataKapitalu <- rataKredytu - odsetki

kredyt = data.frame(
  rataKapitalu = rataKapitalu,
  rataKredytu = rataKredytu,
  odsetki = odsetki,
  zadluzenie = zadluzenie
)
kredyt
wyniki = list(
  typ_ramki = class(kredyt),
  ramka_Top_10 = head(kredyt, 10),
  wymiar_ramki =  dim(kredyt),
  od_100_do_120 = kredyt[100:120,],
  pierwsze_20 = head(kredyt, 20),
  ostatnie_30 = tail(kredyt, 30),
  od_20_do_30 = kredyt[20:30, ],
  od_50_do_60 = kredyt[50:60, ],
  co_10 = kredyt[seq(from=10, by=10, to=240), ],
  suma_odsetek = sum(kredyt$odsetki),
  suma_raty_kredytu = sum(kredyt$rataKredytu),
  suma_raty_kapitalowej = sum(kredyt$rataKapitalu),
  miejsce_przewyższenia_raty = which(kredyt$rataKapitalu > kredyt$odsetki)[1]
)
kredyt[75, ]
str(kredyt)
wyniki

