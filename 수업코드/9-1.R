candy_data <- data.frame(
  color = c("Red", "Blue", "Green"),
  observed = c(30, 50, 20)
)

total_candies <- sum(candy_data$observed)

expected <- rep(total_candies/3, 3)

test_result <- chisq.test(candy_data$observed, p = expected / sum(expected))

print(test_result)
#귀무가설 기각(차이가 있다)