s_eval <- c(3, 4, 2, 5, 1, 4, 3, 2, 5, 3)
e_eval <- c(2, 5, 2, 4, 1, 4, 3, 2, 5, 3)

result_pearson=corr.test(s_eval, e_eval, method="spearman")

result_pearson$p
result_pearson$r