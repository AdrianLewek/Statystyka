medic <- data.frame(
  c(82.5, 65.1, 90.5, 80.9, 74, 74.4, 73.5, 75.6, 70.1, 61.8, 80.6, 82.2, 54.1, 60),
  c(181, 169, 178, 189, 178, 175, 173, 187, 175, 165, 185, 178, 162, 185))
names(medic) = c("masa", "wysokosc")
medic$BMI = medic$masa / (medic$wysokosc / 100)^2

medic$waga = (medic$BMI >= 25) + 2
medic$waga[which(medic$waga < 3)] = (medic$BMI[which(medic$waga < 3)] >= 18.5) +1

medic$waga = factor(medic$waga, levels = 1:3, labels = c("niedowaga", "prawidlowa", "nadwaga"))
medic = rbind(medic, data.frame(masa = 62, wysokosc = 190, BMI=62/1.9^2, waga="niedowaga"))

#wyniki
medic$masa
medic[,1]
medic[[1]]
medic[2]
medic$BMI
medic[medic$BMI > 23,]
which(medic$waga == "prawidlowa")
