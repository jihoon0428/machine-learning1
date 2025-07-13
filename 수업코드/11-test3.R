data <- read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\자료\\Students_Social_Media_Addiction.csv")
set_a <- subset(data, Affects_Academic_Performance == "Yes")$Sleep_Hours_Per_Night
set_b <- subset(data, Affects_Academic_Performance == "No")$Sleep_Hours_Per_Night

result <- var.test(set_a, set_b)
print(result)

# p-value = 4.81e-09 귀무가설 기각 대립가설 채택
# 학생 학업 영향, 하루 잠을 사는 시간의 분산은 차이가 있다.(동일하지 않다.)
# 소셜 미디어 이용으로 하루에 잠을 사는 시간이 학생 학업의 영향에 대한 유무의 분산 차이가 있다.