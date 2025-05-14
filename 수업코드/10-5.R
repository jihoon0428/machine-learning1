data = read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\housetasks.csv", row.names =  1)
chi_squared_test_result <- chisq.test(data)
print(chi_squared_test_result)

#(귀무가설 기각 관련성 있다다)

result <- chisq.posthoc.test(data, method = "bonferroni")
result

corrplot(chi_squared_test_result$residuals, is.cor = FALSE)