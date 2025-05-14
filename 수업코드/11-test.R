data= read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\smartphone_sleep1.csv")

cross_tab <- table(data$스마트폰사용목적, data$수면만족도)
cross_tab

chi_square_test_result <- chisq.test(cross_tab)
print(chi_square_test_result)

# p-value = 0.746 귀무가설 채택, 관련성이 없다, 독립 이다