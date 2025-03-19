city <- c("Seoul", "Busan", "Daegu", "Seoul", "Busan", "Daegu", "Ulsan")
pm25 <- c(18, 21, 21, 17, 8, 11, 25)
df <- data.frame(city = city, pm25 = pm25)
write.csv(df, "C:/Users/ji040/OneDrive/바탕 화면/프로그래밍/R/test.csv", row.names = TRUE)

data <- read.csv("test.csv",header =?,stringsAsFactors =?,fileEcoding =?)