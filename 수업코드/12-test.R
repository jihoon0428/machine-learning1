df = read.csv("C:\\Users\\ji040\\OneDrive\\바탕 화면\\자료\\youtube.csv", stringsAsFactors = TRUE)

anova_result <- aov(ViewerCount ~ ContentType * ThumbnailType * UploadTime, data = df)
summary(anova_result)

anova_result <- aov(ViewerCount ~ ContentType + ThumbnailType + UploadTime, data = df)
summary(anova_result)

# Df   Sum Sq Mean Sq F value   Pr(>F)    
#ContentType     3 20893960 6964653  166.09  < 2e-16 ***
#  ThumbnailType   2  2145992 1072996   25.59 1.41e-10 ***
#  UploadTime      2  4015095 2007547   47.88  < 2e-16 ***
#  Residuals     192  8051050   41933
# 세 변수 모두 종속변수에 영향을 줌

leveneTest(ViewerCount ~ ContentType, data = df)
#0.8612 <- tykey 검정 사용

tukey_result1 <- glht(anova_result, linfct = mcp(ContentType = "Tukey"))
#Game 가장 높음

leveneTest(ViewerCount ~ ThumbnailType, data = df)
#0.03256 <- games-howell 사용

games_howell_test(df, ViewerCount ~ ThumbnailType)
#person 가장 높음

leveneTest(ViewerCount ~ UploadTime, data = df)
#0.3444 <- tykey 검정 사용

tukey_result2 <- glht(anova_result, linfct = mcp(UploadTime = "Tukey"))
#night 가장 높음

df$group <- interaction(df$ContentType, df$ThumbnailType, df$UploadTime)
df_model <- aov(ViewerCount ~ group, data = df)

leveneTest(ViewerCount ~ group, data = df)

tukey_result3 <- glht(group_model, linfct = mcp(group = "Tukey"))