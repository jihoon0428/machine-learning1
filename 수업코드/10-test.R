data = read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\Most Subscribed YouTube Channels_exported.csv")

cross_tab <- table(data$Country, data$Primary.language)
cross_tab

chi_squared_test_result <- chisq.test(cross_tab)
print(chi_squared_test_result)

result <- chisq.posthoc.test(cross_tab, method = "bonferroni")
result

#(p-value = 3.348e-07/ 관련성이 있다)