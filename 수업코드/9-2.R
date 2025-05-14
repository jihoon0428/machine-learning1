std_residuals <- (candy_data$observed - expected) / sqrt(expected)

chi_square_values <- std_residuals^2
p_values <- 1 - pchisq(chi_square_values, df = 2)

candy_data$residuals <- std_residuals
candy_data$chi_square <- chi_square_values
candy_data$p_values <- p_values

print(candy_data)

#"Blue"값에 차이가 많이 난다(관칙값>기대값)