

# Classwork-2
# Lifecycle

# SELECTIONS

# below code checks no of values blw 1 and 5
# Initialize variables
num <- 
count <- 0

# Check if num is between 1 and 1
if (num >= 1 & num <= 5) {
  count <- count + 1  #add 1 to count if condn is ture
} else {
  count <- count - 1  # Decrement count if condition is false
}
print(count)  
# Output: 1

# WHILE LOOP

# Initialize i
i <-0

# loop executes until i is less than 12
while (i < 12) {
  # Print the value of i
  print(i)
  # Increment i by 1
  i = i + 1
}
# Output: 0 1 2 3 4 5 6 7 8 9 10 11

# FOR LOOP
# Loop through numbers from 1 to 10
for (i in 1:10) {
  # Print "Hello R" 5 times
  print("Hello R")
}
# Output:
# Hello R
# Hello R
# Hello R
# Hello R
# Hello R
# Hello R
# Hello R
# Hello R
# Hello R


# Program to display square roots of numbers from 1 to 10

# Loop through numbers from 1 to 20
for (i in 1:20) {
  # Calculate the square root of each number
  square_root <- sqrt(i)
  # Print the square root
  cat("Square root of", i, ":", square_root, "\n")
}
# Output:
# Square root of 1 : 1 
# Square root of 2 : 1.414214 
# Square root of 3 : 1.732051 
# Square root of 4 : 2 
# Square root of 5 : 2.236068 
# Square root of 6 : 2.44949 
# Square root of 7 : 2.645751 
# Square root of 8 : 2.828427 
# Square root of 9 : 3 
# Square root of 10 : 3.162278 

# CREATING VECTORS

# Define vectors using different methods
newVector <- c(3, 8, 2, 1, 4)
Vector1 <- 1:10
Vector2 <- -5:30
Vector3 <- 10:1
combined <- c(3:6, 24, 0:4, 31, 9:7)

# display vectors
print(newVector)  # Output: 2 5 7 1 4
print(typeof(newVector))  # Output: double
print(Vector1)  # Output: 1 2 3 4 5 6 7 8 9 10
print(Vector2)  # Output: -5 -4 -3 -2 -1 0 1 2 3 4 5 6 ... 30
print(Vector3)  # Output: 10 9 8 7 6 5 4 3 2 1
print(combined)  # Output: 3 4 5 6 24 0 1 2 3 4 31 9 8 7

# Creating vectors using seq function
seqVect <- seq(1, 10)
seqVect1 <- seq(1, 10, by = 2)
seqVect2 <- seq(5, -5, by = -2)
seqVect3 <- seq(1, 10, length = 20)
seqVect4 <- seq(0, 1, length = 15)

# Print vectors
print(seqVect)  # Output: 1 2 3 4 5 6 7 8 9 10
print(seqVect1)  # Output: 1 3 5 7 9
print(seqVect2)  # Output: 5 3 1 -1 -3 -5
print(seqVect3)  # Output: 1 1.473684 1.947368 2.421053 2.894737 ... 10
print(seqVect4)  # Output: 0 0.07142857 0.1428571 0.2142857 ... 1

# Creating vectors using rep function
repVect <- rep("Hello", 5)
repVect1 <- rep("A", 2)
repVect2 <- rep(1:5, 4)
repVect3 <- rep(c("A", "B", "C"), 3)
repVect4 <- rep(c("A", "B", "C"), each = 3)
repVect5 <- rep(c("A", "B", "C"), c(2, 1, 3))

# Print vectors
print(repVect)  # Output: "Hello" "Hello" "Hello" "Hello" "Hello"
print(repVect1)  # Output: "A" "A"
print(repVect2)  # Output: 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5
print(repVect3)  # Output: "A" "B" "C" "A" "B" "C" "A" "B" "C"
print(repVect4)  # Output: "A" "A" "A" "B" "B" "B" "C" "C" "C"
print(repVect5)  # Output: "A" "A" "B" "C" "C" "C" "C"

# Convert mixed-mode vector to single mode
T <- c("Hello", 3, 67L, 6.8)
typeof(T)  # R converts them to a single mode (char)

# Vector Attributes
X <- c(3, 5, 8)
typeof(X)
length(X)

# Displaying partial vectors
vect <- c("a", "b", "c", "d", "e")
vect[1]
vect[3]
vect[-1]
vect[-3]
vect[c(1, 3, 5)]  
vect[c(-2, -4)] 
vect[c(-3:-5)]  
vect[1:3]  # show 1 to 3

# Sorting a vector
baseVect <- c(5, -2, 51, 42, -76, 42)
sortedVect <- sort(baseVect)

# Arithmetic

# same length vector  addtioin
one <- c(1, 2, 3)
second <- c(4, 5, 6)
new <- one + second
print(new)

# Different length vector addition
one <- c(1, 2, 3)
second <- c(4, 5, 6, 7, 8, 9)
new <- one + second
print(one)
print(new)

# Calculate statistical measures of a vector
vector<- c(34, 56, 22, 11, 65, 45)
meanV <- mean(X)  # Mean
minV <- min(X)  # Minimum
maxV <- max(X)  # Maximum
sumV <- sum(X)  # Sum
prodV <- prod(X)  # Product
print(meanV)
print(minV)
print(maxV)
print(sumV)
print(prodV)
# Print numbers less than 100 from a vector
sample <- c(32, 56, 44, 76, 89, 24)
for (i in 1:6)
  if (sample[i] < 100)
    print(i)
for (i in sample)
  if (i < 100)
    print(i)

# CLASSWORK-2

# Define the temperatures in Fahrenheit
temps <- c(101, 75, 34, 89, 24, 26, 45)

fahrenheit_to_celsius_converter <- function(fahrenheit) {
  return ((fahrenheit - 32) * 5 / 9)
}

# Convert temperatures from Fahrenheit to Celsius
temperatures_celsius <- fahrenheit_to_celsius_converter(temps)

# Display converted temperatures
cat("Temperatures in Celsius:", temperatures_celsius, "\n")

# Calculate and display highest, lowest, and average temperatures in Fahrenheit
high <- max(temps)
low <- min(temps)
avg <- mean(temps)

cat("Highest temperature in Fahrenheit:", high, "\n")
cat("Lowest temperature in Fahrenheit:", low, "\n")
cat("Average temperature in Fahrenheit:", avg, "\n")