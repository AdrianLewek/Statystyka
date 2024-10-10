saty <- read.table("satysfakcja.dat", header = TRUE, sep = "\t")
saty = na.omit(saty)
saty$edukacja
saty[saty$wiaraZyciePo == "Tak" & saty$zodiak == "Lew", ]
saty[ startsWith(saty$zodiak, "B"), ]
saty[saty$naukaLata>19, 1:4]
sapply(saty[,which(sapply(saty, typeof) == "integer")],sum)
sapply(saty[,1:3],sum)
sapply(saty[,1:3],table)
sapply(saty[,1:3],unique)

