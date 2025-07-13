hights <- c(160, 162, 155, 180, 170, 175, 165, 171, 177, 172)
weights <- c(55, 60, 53, 72, 70, 73, 62, 64, 69, 65)

library(psych)
result_pearson=corr.test(hights, weights, method="pearson")

result_pearson$p
result_pearson$r