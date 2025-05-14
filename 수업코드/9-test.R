data <- read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\Most Subscribed YouTube Channels_exported.csv")

observed <- table(data$Country)

expected <- rep(sum(observed) / length(observed), length(observed))

test_result <- chisq.test(x = observed, p = expected / sum(expected))

print(test_result)


#p-value = 2.2e-16(귀무가설 기각, 대립가설 채택 -> 가장 구독자가 많은 사람들의 나라 출신에는 차이가 있다.(관련이 있다.))
