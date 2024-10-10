#zadanie2
set.seed(1313)
cena <- rnorm(100, mean=50, sd=10)
cena = round(cena,2)
kurs = 4.28
cenaEUR = round(cena/kurs, 0)

ramka = data.frame(cenaPLN = cena, cenaEUR = cenaEUR)
names(ramka)[2] <- "priceEUR"
sort(unique(cenaEUR))
wyniki = list(
  minimum = min(cenaEUR),
  maximum = max(cenaEUR),
  ilosc_unikalnych = length(unique(cenaEUR)),
  unikalne_posortowanych = sort(unique(cenaEUR)),
  suma = sum(cenaEUR),
  srednia_arytmetyczna = (1/length(cenaEUR)*sum(cenaEUR)),
  srednia_geometryczna = prod(cenaEUR)^(1/length(cenaEUR)),
  wieksze_od_13 = sum(cenaEUR > 13),
  mniejsze_od_15_wieksze_od_10 =  sum(cenaEUR > 10 & cenaEUR < 15),
  ramka = ramka
)
wynik
