a = read.csv("C:\\Users\\ji040\\OneDrive\\문서\\Score_2.csv")

df <- data.frame(
x = c(rep("x1", length(a$eng)), rep("x2", length(a$math))),
y = c(rnorm(length(a$eng), mean = mean(a$eng), sd = sd(a$eng)), rnorm(length(a$math), mean = mean(a$math), sd = sd(a$math))))

ggplot(df, aes(x = x, y = y))+
  geom_boxplot(fill = c("blue","red"), outlier.color = "black")+
  labs(title = "수학과영어")+
  xlab("X")+
  ylab("Y")
2
e <- (55-60)/(100/40)^(1/2)
e

3
c <- (143-150)/(400/36)^(1/2)
c  

f <- 1 - 0.9821
f

