city <- c("Seoul", "Busan", "Daegu", "Seoul", "Busan", "Daegu", "Ulsan")
pm25 <- c(18, 21,21,17,8,11,25)

df <- data.frame(city = city, pm25=pm25)

ggplot(df, aes(x = city, y=pm25, fill=city))+
  geom_bar(stat = "identity")+
  labs(title = "지역별초미세먼지 농도")+
  xlab("City")+
  ylab("농도도")

city <- c("Seoul", "Busan", "Daegu", "Seoul", "Busan", "Daegu", "Ulsan")
vari <- c("오전","오후","오전","오후","오전","오후","오후")
pm25 <- c(18, 21,21,17,8,11,25)

df <- data.frame(city = city, pm25=pm25)

ggplot(df, aes(x = city, y=pm25, fill=vari))+
  geom_bar(stat = "identity")+
  labs(title = "지역별초미세먼지 농도")+
  xlab("City")+
  ylab("농도도")