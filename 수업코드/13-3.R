data_pearson= read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\자료\\pearson.csv")
data_spearman= read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\자료\\spearman.csv")

indep_vars <- data_spearman[, c("스트레스수준", "자기효능감수준", "학교만족도", "가족지원수준", "소속감수준", "집중력등급")]

target_var <- data_pearson[, "운동시간", drop = FALSE]

result_pearson=corr.test(indep_vars, target_var, method = "spearman")

result_pearson$p
result_pearson$r