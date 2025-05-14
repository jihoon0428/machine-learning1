observed <- matrix(c(25, 15, 20, 30, 35, 25, 15, 20, 15), nrow = 3, byrow = TRUE)

rownames(observed) <- c("Red", "Blue", "Green")
colnames(observed) <- c("Chocolate", "Vanilla", "Strawberry")
chi_squared <- chisq.test(observed)
print(chi_squared)
#(귀무가설 채택/ 관련성이 있다.)