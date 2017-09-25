
x <- c(60, 61, 62, 63, 65)
y <- c(3.1, 3.6, 3.8, 4, 4.1)

sum(x)
sum(y)

sum(x*y)
sum(x*x)

n <- length(x)

#b = (nΣxy - (Σx)(Σy)) / (nΣx2 – (Σx)2)
b <- (n*sum(x*y) - sum(x)* sum(y)) / (n * sum(x^2) - sum(x)^2 )
b

#a = (Σy - b(Σx)) / n
a <- (sum(y) - b*sum(x)) / n
a

#Regression line is
Y = a + b*x
Y

#Q2. Correlation Coefficient
#The correlation coefficients for corresponding values of x and y is given by
r <- ( n*sum(x*y) - sum(x)* sum(y)) / sqrt(n * sum(x^2) - sum(x)^2) * sqrt(n * sum(y^2) - sum(y)^2) 
r
                                      
cor(x,y)





###DataFrame 
Name = c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
Age  = c(25, 31, 23, 52, 76, 49, 26)
Height = c(177, 163, 190, 179, 163, 183, 164)
Weight = c(57,69, 83,75,70,83,53)
Sex = c("F","F","M","M","F","M","F")




#Create this data frame (make sure you import the variable Working as characte and not factor).

n = c(2, 3, 5) 
s = c("aa", "bb", "cc") 
b = c(TRUE, FALSE, TRUE) 
df = data.frame(n, s, b)
df

Name = c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline")
Working = c("Yes", "No", "No", "Yes", "Yes", "No", "Yes")
Emp = data.frame(Name, Working)
Emp


#Exercise 3
#Construct the above data frame with Name, Sex and Working all characters.
#( stringsAsFactors). Then change Sex and Working to a factor. 



