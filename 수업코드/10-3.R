data <- read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\gender_food.csv")

cross_tab <- table(data$Gender, data$Food)
cross_tab

chi_squared_test_result <- chisq.test(cross_tab)
print(chi_squared_test_result)

#(관련성이 있다.)