data <- c(1, 10, 15, 20, 25, 30, 15, 20, 25, 25, 10, 40)
range_value <- max(data) - min(data)
df <- data.frame(vaules <- c(5, 7, 10, 12, 14, 18, 20, 22, 25, 27, 30))
Q1 <- quantile(data, 0.25)
Q3 <- quantile(data, 0.75)
iqr_value <- Q3- Q1 