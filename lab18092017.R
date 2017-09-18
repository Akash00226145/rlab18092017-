x <- 10.5 # assign a decimal value
x # print the value of x

class(x) # print the class name of x

# numeric is the default number class
k = 1
k # print the value of k

class(k) # print the class name of k

is.integer(k) # is k an integer?



y <- as.integer(3)
y # print the value of y

class(y) # print the class name of y

is.integer(y) # is y an integer?

as.integer(3.14) # coerce a numeric value

as.integer("5.27") # coerce a decimal string

as.integer("Joe") # coerce an non−decimal string


as.integer(TRUE) # the numeric value of TRUE

as.integer(FALSE) # the numeric value of FALSE


##Logical
x <- 1; y <- 2 # sample values
z <- x > y # is x larger than y?
z # print the logical value

class(z) # print the class name of z

u <- TRUE; v <-FALSE
u & v # u AND v

u | v # u OR v

!u # negation of u

x <- as.character(3.14)
x # print the character string

class(x) # print the class name of x

 fname = "Joe"; lname ="Smith"
 paste(fname, lname)

sprintf("%s has %d dollars", "Sam", 100)


substr("Mary has a little lamb.", start=3, stop=12)

sub("little", "big", "Mary has a little lamb.")


##factor()

a = factor("A")
class(a)
x = factor(1)
y = factor(2)
# error
x + y

a = factor(c(3,2,3,4,1))
a

d <- factor(x = c(1,3,2,1,2),
            levels = c(1,2,3), labels = c("low","medium", "high"),
            ordered = TRUE)
d

d <- ordered(x = c(1,3,2,1,2),
             levels = c(1,2,3), labels = c("low","medium", "high"))
d

d <- ordered(c("low","medium", "high","high","medium", "high"))
d

d <- ordered(c("low","medium", "high","high","medium", "high"),
             levels = c("low","medium", "high"))
d


##Vector

x <- c(1,2,3)
x

x[1]

length(x)

class(x)

##Vectors

z <- c(1, "red")
z
class(z)
str(z)

##Vector Arithmetic

a <- c(1, 3, 5, 7)
b <- c(1, 2, 4, 8)
5 * a
a + b

# -, * and / also vectorized. 

# element of u are recycled to match elements of v.
u <- c(10, 20, 30)
v <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
u + v

##Repetition

c('Romeo', 'Juliet', 'Oscar', 'Sierra')

namesV <- c('Romeo', 'Juliet',
              'Oscar', 'Sierra')
namesV
1:10
7:14

seq(from = 2, to = 20, by = 2)
rep(namesV, 3)
rep(namesV, each = 3)

##Indexing
s <- c("aa", "bb", "cc", "dd", "ee")
s[3]

# remove third element
s[-3]

# out of bounds
s[10]

# retreiving vector slices
s <- c("aa", "bb", "cc", "dd", "ee")
s[c(2, 3)]

s[c(2, 3, 3)]
s[c(2, 1, 3)]
s[2:4]

s <- c("aa", "bb", "cc", "dd", "ee")
L <- c(FALSE, TRUE, FALSE, TRUE, FALSE)
s[L]

s[c(FALSE, TRUE, FALSE, TRUE, FALSE)]

v <- c("Mary", "Sue")
v

names(v) = c("First", "Last")
v



v["First"]
First

v[c("Last", "First")]


##Matrix
A <- matrix(c(1, 2, 3, 4, 5, 6), nrow=2)
A
B <- matrix(c(1, 2, 3, 4, 5, 6), nrow=2, byrow=TRUE)
B

A
A[2,3]
A[2,]
A[,3]

A
A[ ,3, drop=FALSE] 
A[ ,c(1,3)] 

dimnames(A) = list(c("row1", "row2"), c("col1", "col2", "col3"))
A

B = matrix( c(1, 2, 3, 4, 5, 6), nrow=3)
B

t(B)
B

C = matrix(c(7, 8, 9), nrow=3)
cbind(B, C)

B
D = matrix(c(4, 7), nrow=1)
rbind(B, D)
B
A
c(A)
C <- matrix(1:4, nrow=2); C
D <- matrix(5:8, nrow=2); D
C %*% D

##List
y = list(1, "dog", 3.14, "cat")
y
y[c(2,3)]
y[4]
# list members
y[[2]]
y[[4]]

#Named List Members

person = list(name="Jane", age=24)
person
person$name
person$age
person$name
person$age

person[1]

person[2]

# attach to R search path
attach(person)
name

detach(person)
name

##data.frame

n = c(2, 3, 5)
s = c("aa", "bb", "cc")
b = c(TRUE, FALSE, TRUE)
f = data.frame(n, s, b)
f

mtcars
mtcars[1, 2]
mtcars["Mazda RX4", "cyl"]
nrow(mtcars)
ncol(mtcars)
head(mtcars)
mtcars[1]
mtcars["mpg"]
mtcars[c("mpg", "hp")]

##Data frame column vector
mtcars[[1]]
mtcars[["mpg"]]

# give same results
mtcars$mpg
mtcars[,"mpg"]

mtcars[24,]


# same result
mtcars["Camaro Z28",]
mtcars[c(3, 24),]

# same result
mtcars[c("Datsun 710", "Camaro Z28"),]
L = mtcars$am == 0
L
mtcars[L,]
mtcars[L,]$mpg


##Exercises 2. Vectors

help(seq)

v1 = 1.20
v1


#Q3
v1 <- c("lable")
v2 <- (1:30)
v <- paste(v1,v2)
v

#Q4
v1 <- c("fn")

v2 <- (1:30)
v <- paste(v1, v2, sep = "" )
v

#Q5
set.seed(50)
x <- sample(0:999, 10, replace=T)
x
y <- sample(0:999, 10, replace=T)
y

#(x1 + 2x2 − x3, x2 + 2x3 − x4, . . . , xn−2 + 2xn−1 − xn ).
x
x1 <- x[-length(x)]
x1 <- x1[-length(x1)]
x1

x2 <- 2 * x[-1]
x2
x2 <- x2[-length(x2)]
x2

x3 <- x[-c(1,2)]
x3

ans <- x1 + x2 +x3
ans
