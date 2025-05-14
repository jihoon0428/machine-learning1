data2= read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\smartphone_sleep2.csv")

cross_tab2 <- table(data2$스마트폰사용목적, data2$수면만족도)
cross_tab2

chi_square_test_result2 <- chisq.test(cross_tab2)
print(chi_square_test_result2)

result <- chisq.posthoc.test(cross_tab2, method = "bonferroni")
print(result)

#p-value = 2.076e-11 귀무가설 기각, 관련성이 있다, 독립이 아니다.
#sns(불만족), 게임(만족), 공부(만족), 뉴스 확인(보통), 영상 시청(만족)

