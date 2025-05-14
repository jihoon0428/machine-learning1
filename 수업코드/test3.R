a <- read.csv("C:\\Users\\ji040\\OneDrive\\문서\\mobile_phones_2000.csv")

ram <- a$RAM..GB.
refresh <- a$Refresh.Rate..Hz.

sd_ram = sd(ram)
sd_refresh = sd(refresh)

result <- z.test(x = ram, y = refresh, sigma.x = sd_ram, sigma.y = sd_refresh, alternative = "two.sided")

p-value < 2.2e-16 

#귀무가설 기각(H0)
#대립가설 채택(H1)

