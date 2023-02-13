#30 DECEMBER, 2022
print("Hello World")
print('In single quote')
20
# single line comment

name <- "Avantika"
age <- 20
age+5

# for concatenation string to string and string to number
paste("My name is",name)
paste("My age is",age)

var1 <- var2 <- var3 <- "Orange"
.myvar = "Patil"

class(.myvar)
class(age)

y <- 20
class(y)

x <- TRUE
class(x)

# Assignment Operator
num1 <- 20
num2 <- 10

# Arithmetic Operator
num1+num2
num1-num2
num1*num2
num1/num2

max(23, 21, 56, 34)
min(45, 23, 78, 12)
sqrt(25)
abs(-4.5)

# data structure
# homogeneous and heterogeneous
# vector
fruits <- c("Banana", "Apple", "Orange", "Strawberry")
fruits
class(fruits)

n1 <- c(1, 2, 3, 4, 5)
class(n1)
n2 <- c(T, F, TRUE, FALSE)
class(n2)

# OPERATIONS 
x <- c(2, 0, 0, 4)
y <- c(1, 9, 9, 9)

x+y
x*5
(x+y)*1.5

# SEQUENCE
1:50
seq(1, 10)
seq(1, 50, 5)
seq(1, 50, by="5")
seq(50, 1, -1)

n1 <- 1.5:5.5
print(n1)

# 2 JANUARY 2023
#REPETITION
rep(47, 7)
rep("Mango", 5)

#RANDOM SAMPLE
sample(1:50, 8)
# sample(1:10, 20)// error default value for replace=false
sample(1:10, 20, replace=TRUE)
sample(c("HP", "APPLE", "LENOVO"), 10, replace=T)

#INDEXING/ACCESSING VECTOR ELEMENT
# In R, vector index starts from 1 
x<-c(2, 0, 0, 4)
x[1]
x[c(3)] # unknown
x[-1] # exclude 1st element only
x[-2] # exclude 2nd element only

x[1] <- 1
x

x[-1] <- 5
x

x[3] <- 2
x[4] <- 5
x
x[c(1,3)]

y <- c(1, 9, 9, 9)
y<9

y[y<9]
y[y<9] <- 5
y

marks <- c(60, 70, 80, 50, 90) 
marks>50 
marks[marks>50] 
# for numeric value, to check availability, we use ==
marks==80 

# for character or string value, to check availability, we use "%in%"
names <- c("Snehal", "Pooja", "Vidya", "Ganesha")
"Pooja" %in% names 

#SLICING 
marks[3:7] 

price <- c(2999, 449, 29, 650, 2800, 192, 9384, 373, 474, 4745) 
price[2:7] 

#SELECTING ELEMENTS FROM A VECTOR WITH CONDITION
price[price>1000] 

sort(price) 
sort(price, decreasing = T) 

help(sort) 
help(mean) 

mean(price)

# BASIC FUNCTIONS ON VECTOR
numb <- c(12, 23, 10, 14, 90, 2, 23 ,23, 12)
numb
length(numb)
max(numb)
min(numb)
sum(numb)
mean(numb)
median(numb)
mode(numb)

#DATA FRAMES
a <- c(42, 18, 91, 87, 66)
b <- c("p", "q", "r", "s", "t")
data.class(b)
data.frame(a, b)
df <- data.frame(a, b)
df

df1 <- data.frame(
  Name = c("Avantika", "Shruti", "Vaishnavi", "Dashrath"),
  city = c("Kasegaon", "Malhar Peth", "Pali", "Kundal"),
  class = c("BCA-III", "BCA-III", "BSC", "BCA-III")
)
df1

df1[df1$class == "BCA-III", c(1, 3)]

# [row, column]
df1[,1] 
df1[2,]

#display records of particular column
df1$Name

df2 <- data.frame(
  height = c(150, 160),
  weight = c(65, 72)
)
df2

food <- data.frame(
  name = c("Pav Bhaji", "Panner Masala", "Kaju Katli", "Butter Chicken", "Gulabjam", "Mutton Birayni"),
  type = c("veg", "veg", "veg", "non-veg", "veg", "non-veg"),
  taste = c("Spicy", "Spicy", "Sweet", "Spicy", "Sweet", "Spicy"),
  price = c(120, 235, 420, 340, 90, 315)
)
food

food[food$type=="veg",]
food[food$type=="non-veg", c(1,4)]
#or
food[food$type=="non-veg", c("name", "price")]

#all spicy food with price less than 300
food[food$taste=="Spicy" & food$price<300,]

#Orange, mtcars are built in data st, Learn with this dataset
Orange
mtcars

dim(mtcars) #no. of rows and no. of columns
nrows(mtcars) # no. of rows
ncol(mtcars) # no. of columns
str(mtcars) # structure - col names data type and values
summary(mtcars) 
help(mtcars) # info of data set
mtcars$cyl #individual col cyl values
table(mtcars$cyl) #there are 11 cars having 4 cylinder

# 3 January, 2023
USArrests
help("USArrests")
View(USArrests)
head(USArrests) # by default show first 6 records
tail(USArrests) # by default show last 6 records
head(USArrests, 8) 

#check all available data sets
data()