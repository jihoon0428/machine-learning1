data = read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\자료\\growth.csv", stringsAsFactors = TRUE)

data$group <- interaction(data$fertilizer, data$water)
group_model <- aov(growth ~ group, data = data)

leveneTest(growth ~ group, data = data)

tukey_result <- glht(group_model, linfct  = mcp(group = "Tukey"))
summary(tukey_result)
