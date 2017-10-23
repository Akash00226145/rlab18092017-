data(iris)
iris
iris.setosa <- iris[iris$Species=="setosa",-5]
iris.versicolor <- iris[iris$Species=="versicolor",-5]
iris.virginica <- iris[iris$Species=="virginica",-5]
# calculating mean for each piece (The apply step)
mean.setosa <- colMeans(iris.setosa)
mean.setosa
mean.versicolor <- colMeans(iris.versicolor)
mean.versicolor
mean.virginica <- colMeans(iris.virginica)
mean.virginica
# combining the output (The combine step)
mean.iris <- rbind(mean.setosa, mean.versicolor, mean.virginica)
# giving row names so that the output could be easily understood
rownames(mean.iris) <- c("setosa","versicolor","virginica")


#3Q
install.packages('dplyr')
install.packages('DBI')
install.packages('lazyeval')
library(dplyr)

airquality[1:5,]
mean(airquality$Temp)

summary(airquality)
data <- airquality

summarise(data, meanOzome=mean(Ozone), meanSolar=mean(Solar.R))
summarise(data, meanOzone=mean(Ozone, na.rm = TRUE), meanSolar=mean(Solar.R, na.rm = TRUE))

ozone3q <- quantile(airquality$Ozone, na.rm = TRUE)[4]
ozone3q

#Q3.3
hist(airquality$Ozone)

#Q3.4
filter(airquality, airquality$Ozone, ozone3q)

#Q3.5

groupedByMonth <- group_by(airquality, Month)

groupedByMonth

#Q3.6

summarise(groupedByMonth, meanOzone=mean(Ozone, na.rm = TRUE), maenSolar=mean(Solar.R, na.rm = TRUE))
#Q3.7

filter(groupedByMonth, Ozone == max(Ozone, na.rm = TRUE))

#Q3.8
temp <- filter(groupedByMonth, Ozone > ozone3q)
temp

#Q3.9
summarise(temp, maenOzone=mean(Ozone, na.rm = TRUE), meanSolar=mean(Solar.R, na.rm = TRUE))

#Q3.10

airquality %>%
  group_by(Month) %>%
  filter(Ozone > ozone3q) %>%
  summarise(meanOzone=mean(Ozone, na.rm = TRUE), maenSolar=mean(Solar.R, na.rm = TRUE))


y1 <- c(1,2,3,4,5,6)
y2 <- c(6,1,9,5,17,12)
plot(y1, col="red")
points(y2, col="blue")
lines(y2)
plot(y1, col="red", ylim=c(0,20), ylab="Y values")
lines(y1, col="red")
points(y2, col="blue", pch="@")
lines(y2, col="blue", lty=2)
legend("topright", c("y1", "y2"), lty=c(1,2), col = c("red", "blue"))
