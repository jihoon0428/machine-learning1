#t_test 평균 차이 검증
group_a <- c(85, 88, 90, 92, 91, 87, 89, 86, 84, 83)
group_b <- c(78, 82, 80, 85, 84, 87, 83, 81, 80, 79)

meam_a <- mean(group_a)
mean_b <- mean(group_b)
sd_a <- sd(group_a)
sd_b <- sd(group_b)

t_test <- (meam_a-mean_b)/sqrt((sd_a^2/length(group_a))+
                                 (sd_b^2/length(group_b)))
t_test

df <- length(group_a) + length(group_b) - 2

group_a <- c(85, 88, 90, 92, 91, 87, 89, 86, 84, 83)
group_b <- c(78, 82, 80, 85, 84, 87, 83, 81, 80, 79)

t_test <- t.test(group_a, group_b, alternative = "two.sided")
t_test <- t.test(group_a, group_b, alternative = "less")
t_test <- t.test(group_a, group_b, alternative = "greater")

#Z-test 평균 차이 검증
group_a <- c(85, 88, 90, 92, 91, 87, 89, 86, 84, 83, 85, 88, 90, 92, 91, 87, 89, 86, 84, 83, 
             85, 88, 90, 92, 91, 87, 89, 86, 84, 83, 85, 88, 90, 92, 91, 87, 89, 86, 84, 83)
group_b <- c(78, 82, 80, 85, 84, 87, 83, 81, 80, 79, 78, 82, 80, 85, 84, 87, 83, 81, 80, 79, 
             78, 82, 80, 85, 84, 87, 83, 81, 80, 79, 78, 82, 80, 85, 84, 87, 83, 81, 80, 79)

sd_a = sd(group_a)
sd_b = sd(group_b)

result <- z.test(x=group_a, y=group_b, sigma.x = sd_a, sigma.y = sd_b, alternative = "two.sided")