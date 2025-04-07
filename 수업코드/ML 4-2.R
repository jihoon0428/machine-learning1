df <- data.frame(x = c(1, 2, 3, 4, 5), y = c(6, 8, 5, 9, 7))

ggplot(df, aes(x=x,y=y))+
  geom_point(color = "black", size = 2) +labs(title = "Scatter Plot")+
  xlab("X")+
  ylab("Y")