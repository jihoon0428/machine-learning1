df <- data.frame(
  group = c(rep("Group 1", 60), rep("Group 2", 60)),
  values = c(rnorm(60, mean = 0, sd = 1), rnorm(60, mean = 2, sd = 1))
)

ggplot(df, aes(x = group, y = values))+
  geom_boxplot(fill = c("lightyellow","lightblue"), outlier.color = "red")+
  labs(title = "Boxpolt Example")+
  xlab("Group")+
  ylab("Values")