df <- data.frame(values = c(5,7,10,12,14,18,20,22,25,27,30))

ggplot(df, aes(x = values))+
  geom_histogram(aes(y= ..density..), binwidth = 5, fill = "steelblue", color="white")+
  labs(title = "histogram")+
  xlab("Values")+
  ylab("Density")