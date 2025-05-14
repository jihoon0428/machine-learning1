#선 그래프
time <- seq(1,24)
temperature <- c(22,21,20,19,18,18,19,20,22,24,26,28,29,28,27,25,24,23,22,22,21,21,20,19)

data <- data.frame(time=time, temp=temperature)

ggplot(data, aes(x=time, y=temp))+
  geom_line()+
  labs(title="시간에 따른 온도변화")+
  xlab("시간")+
  ylab("온도")

#점 그래프
df <- data.frame(x=c(1,2,3,4,5), y=c(6,8,5,9,7))

ggplot(df, aes(x=x, y=y))+
  geom_point(color = "blue", size = 0.5)+
  labs(title = "Scatter Plot")+
  xlab("X")+
  ylab("Y")

#선점도(점과 선선)
df <- data.frame(x=c(1,2,3,4,5), y=c(6,8,5,9,7))

ggplot(df, aes(x=x, y=y))+
  geom_point(color = "blue", size = 2)+
  geom_line(aes(color = "conneted Points"), size = 0.5)+
  labs(title = "Scatter Plot")+
  xlab("X")+
  ylab("Y")

#2개의 산점도
df <- data.frame(x=c(1,2,3,4,5), y=c(6,8,5,9,7))
df2 <- data.frame(x=c(5,6,7,8,9), y=c(18,12,16,77,63))

ggplot()+
  geom_point(data = df, aes(x=x, y=y), color = "blue", size = 2)+
  geom_line(data = df, aes(x=x, y=y, color = "Commected Points"), size = 0.5)+
  geom_point(data = df2, aes(x=x, y=y), color = "red", size = 2)+
  geom_line(data = df2, aes(x=x, y=y, color = "Commected Points"), size = 0.5)+
  labs(title = "Scater Plot")+
  xlab("X")+
  ylab("Y")

#상자수염 그래프
df <- data.frame(
  group = c(rep("Group1", 60), rep("Group2", 60)),
  values = c(rnorm(60, mean = 0, sd = 1), rnorm(60, mean = 2, sd = 1)))

ggplot(df, aes(x = group, y = values))+
  geom_boxplot(fill = c("white","lightblue"), outlier.color = "blue")+
  labs(title = "Boxplot EXample")+
  xlab("Group")+
  ylab("Values")

#막대그래프
city <- c("Seoul", "Busan", "Daegu", "Seoul", "Busan", "Daegu", "Ulsan")
pm25 <- c(18,21,21,17,8,11,25)

df <- data.frame(city = city, pm25 = pm25)

ggplot(df, aes(x = city, y = pm25, fill = city))+
  geom_bar(stat = "identity")+
  labs(title = "지역별 초미세먼지 농도")+
  xlab("City")+
  ylab("농도")

#막대그래프(범주형 포함)
city <- c("Seoul", "Busan", "Daegu", "Seoul", "Busan", "Daegu", "Ulsan")
vari <- c("오전", "오후", "오전", "오후", "오전", "오후", "오후")
pm25 <- c(18,21,21,17,8,11,25)

df <- data.frame(city = city, pm25 = pm25,vari = vari)

ggplot(df, aes(x=city, y=pm25, fill=vari))+
  geom_bar(stat="identity")+
  labs(title = "지역별초미세먼지 농도")+
  xlab("City")+
  ylab("농도")

#히스토그램
df <- data.frame(values = c(5,7,10,12,14,18,20,22,25,27,30))

ggplot(df, aes(x=values))+
  geom_histogram(aes(y=..density..), binwidth = 5, fill = "steelblue", color="white")+
  labs("히스토그램")+
  xlab("Value")+
  ylab("Density")