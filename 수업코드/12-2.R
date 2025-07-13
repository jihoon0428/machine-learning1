data = read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\자료\\growth.csv", stringsAsFactors = TRUE)

#독립변수들간 상호작용X
anova_result <- aov(growth ~ fertilizer + water, data = data)
summary(anova_result)
#독립변수들간 상호작용O
anova_result <- aov(growth ~ fertilizer * water, data = data)
summary(anova_result)

#사후검정
library(car)
library(rstatix)
#1. fertilizer 사후검정
leveneTest(growth ~ fertilizer, data = data)

tukey_result <- glht(anova_result, linfct = mcp(fertilizer = "Tukey"))
games_howell_test(data, growth ~ fertilizer) #(C>B>A)

#2. water 사후검정
leveneTest(growth ~ water, data = data)

tukey_result <- glht(anova_result, linfct = mcp(water = "Tukey"))
games_howell_test(data, growth ~ water) #(high>low)

#(fertilizer = c, water = high 일 때 값이 크다.)