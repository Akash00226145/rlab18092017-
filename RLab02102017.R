##lab4regression

##Follwo below link for solution #
## http://rstudio-pubs-static.s3.amazonaws.com/171204_97e4c740be07426a9ecd8efcca153d8a.html

#Q1

x <- c(1,2,3,4,5,6)
y <- c(6,1,9,5,17,12)
values <- data.frame(x, y)
plot(values, xlab="X", ylab="Y")
cor(x,y)
model <- lm(y ~ x)
model
model$coefficients
model$residuals
abline(lm(y ~ x, data=values))
abline(model, data=values)
predict(model, values)
summary(model)

#Q2

x <- 1:10
y <- x ^ 2
myData <- data.frame(x,y)
regression.model <- lm(y ~ x)
plot(x, y, xlab="x values", ylab="y values")
abline(lm(y ~ x, data = myData))

methods(plot)
?plot.lm
plot(regression.model, which = 1)

#3
?faithful
summary(faithful)

#generate linear model using 
#eruptions as the dependent variable 
#and waiting as independent variable 
eruption.lm <- lm(eruptions ~ waiting, data=faithful)

#model description 
summary(eruption.lm)
#plot
plot(eruptions~waiting,data=faithful)
abline(eruption.lm,col="red")


#Predict eruptions times for waiting times c(50, 60, 70, 80, 90).
#For single time
newdata<- data.frame(waiting=75)
predict(eruption.lm,newdata)

newdata<- data.frame(waiting=c(50, 60, 70, 80, 90))
predict(eruption.lm,newdata)

#Q4. Multiple Linear Regression
data("stackloss") #load data

head(stackloss) #preview data
#generate linear model
#similar to simple linear regression
stackloss.lm = lm(stack.loss ~ Air.Flow + Water.Temp + Acid.Conc., data=stackloss)

#summarize model
summary(stackloss.lm)
