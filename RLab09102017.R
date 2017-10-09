
#install.packages("C50")
#install.packages("gmodels")

library(C50)
library(gmodels)
credit <- read.csv("credit.csv")
str(credit)


# look at two characteristics of the applicant
table(credit$checking_balance)
table(credit$savings_balance)

# look at two characteristics of the loan
summary(credit$months_loan_duration)
summary(credit$amount)
hist(credit$amount)

# look at the class variable
table(credit$default)

#
set.seed(12345)
credit_rand <- credit[order(runif(1000)), ]
# compare the credit and credit_rand data frames
summary(credit$amount)
summary(credit_rand$amount)
head(credit$amount)
head(credit_rand$amount)
# split the data frames
credit_train <- credit_rand[1:900, ]
credit_test <- credit_rand[901:1000, ]
# check the proportion of class variable
prop.table(table(credit_train$default))
prop.table(table(credit_test$default))

#library(C50)
credit_model <- C5.0(default ~ ., data = credit_train)
# credit_model <- C5.0(credit_train[-17], credit_train$default)
# display simple facts about the tree
credit_model

plot(credit_model, trial = 1)
plot(credit_model)
# display detailed information about the tree
summary(credit_model)
# Evaluating model performance
# Create a factor vector of predictions on test data
credit_pred <- predict(credit_model, credit_test)

#library(gmodels)
CrossTable(credit_pred, credit_test$default,
           prop.chisq = FALSE, prop.c = FALSE, prop.r = FALSE,
           dnn = c('predicted default', 'actual default'))







#Q4. Decision Tree for Iris Data

str(iris)

indexes = sample(125, 25)
iris_train = iris[indexes,]
iris_test = iris[-indexes,]

#target = Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
#target = Sepal.Length ~ .,iris

#tree = rpart(target, data = iris_train, method = "class")
#rpart.plot(tree)
#iris_test = iris[-indexes,]

data <- iris
View(data)

