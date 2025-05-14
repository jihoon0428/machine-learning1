cross_tab <- table(data$Gender, data$Food)
cross_tab

results <- chisq.posthoc.test(cross_tab, method = "bonferroni")
results


#(국밥, 피자 차이가 있다)

choose(3, 2)