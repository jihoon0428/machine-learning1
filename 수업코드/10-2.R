data <- data.frame(Cender = c("Male", "Female", "Male", "Male", "Female", "Female", "Male", "Male", "Female", "Female"),
                   Food = c("국밥", "마라탕", "국밥", "피자", "피자", "국밥", "국밥", "마라탕", "피자", "피자"))

cross_tab <- table(data$Cender, data$Food)
cross_tab

chi_squared_test_result <- chisq.test(cross_tab)
print(chi_squared_test_result)
#(관련성이  있다)