data <- c(15, 20, 25, 15, 20, 25, 25)
mean_data <- mean(data)
squared_diff <- (data - mean_data)^2
varriance <- sum(squared_diff) / length(data)