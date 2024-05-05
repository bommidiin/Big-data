## Online R compiler to run R program online
## Print "Try programiz.pro" message

# class-1 to get comfortable with R

# addition operation
first <- 10
second <- 15
third <- first + second
# variables operations
var1=10
var2=2
var3=var1/var2
var4<-sqrt(var3)
greetings <- "hello"
greetingsto <- "Alice"
message <- paste(greetings, greetingsto)
#Integers just to give a try
## declaring a integer-point value to a varaible
num <- 2L
typeof(num)
# to display the value
print(num)

# Assigning a floating-point value to a variable
x <- 3.14
# Printing the value
print(x)

# Assigning a double-point value to a variable
f <- 2.5
typeof(f)
# Printing the value
print(f)

#Assigning a complex-point value to a variable
c <- 2+3i
typeof(c)
# Printing the value
print(c)

#Assigning a character-point value to a variable
char <- "h"
typeof(char)
# Printing the value
print(char)

#Assigning a logical-point value to a variable
l1 <- T
typeof(l1)
l2 <- F
typeof(l1)
# Printing the value
print(l1)
print(l1)

# basics to learn R
j <- 5
k <- 3
l <- j + k
m <- j - k
n <- j * k
o <- j / k
j
k
l
m
n
o

# Printing the value
print(j)
print(k)
print(l)
print(m)
print(n)
print(o)


# logics to learn R
7 < 11
9>73
5==7
res <- 7 < 11
res
typeof(res)

# another example
res <- 4 < 5
res
typeof(res)
res2 <- !(5>1)
res2
res | res2
res & res2
isTRUE(res)

# classwork-1
#Write a program to get the average of 3 numbers: 7, 12, and 5
i=7
j=12
k=5
m<-i+j+k
res<-m/3
print(res)

#Write a program to print out “Welcome to R,<your first name>"
print("Welcome to R")
print("BOMMIDI NAGARAJ")

#Let x be 7, y be 12 and z be 4, 
#print out whether x is bigger than y and whether x is bigger than z
x<-7
y<-12
z<-4
# Checks if x is bigger than y
if (x > y) {
  print("x is bigger than y")
} else {
  print("x is not bigger than y")
}

# Checks if x  bigger than z
if (x > z) {
  print("x is bigger than z")
} else {
  print("x is not bigger than z")
}


