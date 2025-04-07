time <- seq(1, 24)
temperature <- c(22, 21, 20, 19, 18, 18, 19, 20, 22, 24, 26, 28, 29, 28, 27, 25, 24, 23, 22, 22, 21, 21, 20, 19)

data <- data.frame(time=time, temp=temperature)

ggplot(data, aes(x=time,y=temp))+
  geom_line() +labs(title = "시간에 따른 온도 변화")+
  xlab("시간")+
  ylab("온도")