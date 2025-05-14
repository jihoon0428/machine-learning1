data2 = read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\incafe.csv")

cross_tab <- table(data2$카페분위기, data2$만족도)
cross_tab

chi_squared_test_result <- chisq.test(cross_tab)
print(chi_squared_test_result)

#사후검정
results <- chisq.posthoc.test(cross_tab, method = "bonferroni")
results

#(p-value = 1.279e-07 귀무가설 채택 -> 관련성 있다)
#(자연채광(p values = 0.046107), 조용한(p values = 0.000561)만족도 높음, 북적이는(p values = 0.000384)만족도 낮음) 
# df = 3 = (4-1)(2-1)

