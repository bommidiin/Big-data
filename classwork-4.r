
ONE <- rnorm(50)
print(ONE)
Games <- matrix(1:50, nrow = 5)
print(Games)
print(rownames(Games))
print(colnames(Games))

print(Games[c(1, nrow(Games)), ])  


Second <- ONE + rnorm(50, mean = 0, sd = 0.4)
print(Second)

data <- as.data.frame(cbind(ONE, Second))
print(data)

# Print summary statistics 
print(summary(data))

# Load the ggplot2 library for visualization
library(ggplot2)
# Create a scatter plot of the data
ggplot(data, aes(x = ONE, y = Second)) + geom_point(size = 2)

# Load the 'anscombe' dataset
data("anscombe")
# Print the 'anscombe' dataset
print(anscombe)
# Generate levels to indicate group number
levels <- gl(4, nrow(anscombe))
# Combine the 'anscombe' dataset with the group levels
mydata <- with(anscombe, data.frame(x = c(x1, x2, x3, x4),
                                    y = c(y1, y2, y3, y4),
                                    mygroup = levels))

# ANSCOMBE QUARTET Visualization
# Set the theme to theme_bw()
library(ggplot2)
theme_set(theme_bw())
# Create a scatter plot with linear regression lines and facets for each group
ggplot(mydata, aes(x, y)) +
  geom_point(size = 4) +
  geom_smooth(method = "lm", fill = NA, fullrange = TRUE) +
  facet_wrap(~mygroup)

# Missing Data in R
# Create a vector with missing values
x <- c(1, 2, 3, NA, 5)
# Print the vector 'x'
print(x)

# Check for missing values
print(is.na(x))

# Calculate the mean of the vector
print(mean(x))

# Calculate the mean of the vector, excluding missing values
print(mean(x, na.rm = TRUE))  # 2.75

# Create a data frame with missing values
DF <- data.frame(x = c(12, 9, 23), y = c(10, 20, NA))
# Print the data frame 'DF'
print(DF)

# Exclude missing values from the data frame
DF1 <- na.exclude(DF)
# Print the data frame 'DF1'
print(DF1)

# Calculate the maximum value in the data frame (includes missing values)
print(max(DF))  # NA
# Calculate the maximum value in the data frame, excluding missing values
print(max(DF, na.rm = TRUE))  # 23
# Calculate the maximum value in the data frame with missing values excluded
print(max(DF1))  # 20

# Dotchart and Barplot
# Load the 'mtcars' dataset
data(mtcars)
# Create a dot chart of miles per gallon
dotchart(mtcars$mpg, labels = row.names(mtcars), cex = 0.6, main = "Miles per Gallon of Car models", xlab = "mpg")
# Create a bar plot of the distribution of car cylinder count
barplot(table(mtcars$cyl), main = "Distribution of Car Cylinder Count", xlab = "Number of cylinders")

# Stem and Leaf vs. Histogram
# Create a vector of numerical values
x <- c(12, 13, 21, 27, 33, 34, 35, 37, 46, 51, 51, 57)
# Print the vector 'x'
print(x)

# Create a stem-and-leaf plot of the vector 'x'
print(stem(x))

# Create a histogram of the vector 'x'
hist(x)

# Histogram and Density Plot
# Generate income data
income <- 1000 * rlnorm(4000, meanlog = 4, sdlog = 0.7)
# Print summary statistics of the income data
print(summary(income))

# Create a histogram of income
hist(income, breaks = 500, xlab = "Income", main = "Histogram of Income")
# Add rug plot to the histogram
rug(income)

# Create a density plot of the logarithm of income
plot(density(log10(income), adjust = 0.5), main = "Log10 Scale Distribution")
# Add rug plot to the density plot
rug(log10(income))

# Nicer Density Plot
# Load the 'diamonds' dataset
library("ggplot2")
data(diamonds)
# Filter the dataset to include only premium and ideal cuts
nicediamonds <- diamonds[diamonds$cut == "Premium" | diamonds$cut == "Ideal", ]
# Print summary statistics of the cut variable
print(summary(nicediamonds$cut))
# Create a density plot of diamond prices
print(ggplot(nicediamonds, aes(x = price, fill = cut)) + geom_density(alpha = 0.3, color = NA))
# Create a density plot of logarithm of diamond prices
print(ggplot(nicediamonds, aes(x = log10(price), fill = cut)) + geom_density(alpha = 0.3, color = NA))

# Showing Three Variables
# Load the 'mtcars' dataset
data("mtcars")
# Order the dataset by miles per gallon
cars <- mtcars[order(mtcars$mpg), ]
# Convert the 'cyl' column to a factor variable
cars$cyl <- factor(cars$cyl)
# Assign colors to different cylinder counts
cars$color[cars$cyl == 4] <- "Red"
cars$color[cars$cyl == 6] <- "Blue"
cars$color[cars$cyl == 8] <- "Green"
# Create a dot chart of miles per gallon
dotchart(cars$mpg, labels = row.names(cars), cex = .7, groups = cars$cyl, main = "Miles per Gallon",
         xlab = "Miles per Gallon", color = cars$color, gcolor = "Black")

# Lab part
# There are many ways to create a matrix
# The matrix function:

# Creating matrix A
A <- matrix(1:10, nrow = 5)
print(A)

# Creating matrix AB
XY <- matrix(21:40, nrow = 2)
# Print matrix XY
print(XY)

# Creating matrix BC
YZ <- matrix(1:100, nrow = 20)
print(YZ)

ZX <- matrix(0, nrow = 4, ncol = 4)
print(ZX)

AB <- matrix(0, nrow = 10)

print(AB)

DE <- matrix(c(4, 5, 6, 2, 3, 4, 12, 34, 45, 10, 55, 32), nrow = 4, ncol = 3)
print(DE)


Data <- 1:20

A <- matrix(Data, 4, 5)
print(A)

B <- matrix(Data, 4, 5, byrow = TRUE)
print(B)

C <- A + B
print(C)



Players <- c("Player1", "Player2", "Player3", "Player4", "Player5")

FieldGoals <- c(20, 30, 25, 40, 35)  

MinutesPlayed <- matrix(200:249, nrow = 5, ncol = 10)  
Salary <- matrix(50000:50049, nrow = 5, ncol = 10)  

r1 <- c("I", "am", "happy")
r2 <- c("what", "a", "day")
r3 <- 1:3

C <- rbind(r1, r2, r3)

print(C)

D <- cbind(r1, r2, r3)

print(D)

r1 <- 1:5
r2 <- 1:3
r3 <- 1:7
# Print the vectors
print(r1)
print(r2)
print(r3)
# Perform operations on vectors of different lengths
result1 <- r1 + r2
result2 <- r1 - r3
result3 <- r2 * r3
result4 <- r3 / r1
# Print the results
print(result1)
print(result2)
print(result3)
print(result4)

# Matrix Functions
# Create a matrix
A <- matrix(1:10, nrow = 5)
# Print matrix A
print(A)
# Get the number of rows in matrix A
print(nrow(A))
# Get the number of columns in matrix A
print(ncol(A))
# Get the dimensions of matrix A
print(dim(A))
# Get the data type of matrix A
print(typeof(A))
# Transpose matrix A
B <- t(A)
# Print transposed matrix B
print(B)

# Matrix Access
# Create a matrix
A <- matrix(1:10, nrow = 5)
# Print matrix A
print(A)
# Access element at the ONE row and ONE column of matrix A
print(A[1, 1])
# Access all elements in the ONE column of matrix A
print(A[, 1])
# Access all elements in the ONE row of matrix A
print(A[1, ])
# Access all elements except the second row of matrix A
print(A[-2, ])
# Access all elements except the second column of matrix A
print(A[, -2])
# Access all elements except the second row and second column of matrix A
print(A[-2, -2])

# Named Vector
# Create a vector with named elements
Charlie <- 7:11
# Print vector Charlie
print(Charlie)
# Assign names to elements of vector Charlie
names(Charlie) <- c("a", "b", "c", "d", "e")
# Print vector Charlie with names
print(Charlie)
# Access element with name "d" from vector Charlie
print(Charlie["d"])
# Clear names of vector Charlie
names(Charlie) <- NULL
# Print vector Charlie without names
print(Charlie)

# Named Matrix
# Create a vector to fill the matrix
temp <- rep(c("a", "b", "c"), each = 3)
# Print vector temp
print(temp)
# Create a matrix with row and column names
Bravo <- matrix(temp, 3, 3)
# Print matrix Bravo
print(Bravo)
# Assign row names to matrix Bravo
rownames(Bravo) <- c("Tom", "Dick", "Harry")
# Print matrix Bravo with row names
print(Bravo)
# Assign column names to matrix Bravo
colnames(Bravo) <- c("Alice", "Jane", "Mary")
# Print matrix Bravo with row and column names
print(Bravo)

# Named Matrix (continued)
# Modify an element in matrix Bravo
Bravo[2, 3] <- 0
# Print modified matrix Bravo
print(Bravo)
# Modify an element in matrix Bravo using row and column names
Bravo["Tom", "Mary"] <- 0
# Print modified matrix Bravo
print(Bravo)
# Access row names of matrix Bravo
print(rownames(Bravo))
# Access column names of matrix Bravo
print(colnames(Bravo))

# Define a dummy 'Games' matrix
Games <- matrix(1:50, nrow = 5)

# Simple Math
# Print the 'Games' matrix
print(Games)

# Access element in the 'Games' matrix using numerical indices
print(Games[1, 5])  # Assuming you want the element in the ONE row, fifth column

# Define row and column names for the 'Games' matrix
rownames(Games) <- c("LeBronJames", "KobeBryant", "KevinDurant", "DerrickRose", "DwyaneWade")
colnames(Games) <- 2008:2017  # Assuming the columns represent years from 2008 to 2017

# Access element in the 'Games' matrix using row and column names
print(Games["LeBronJames", "2012"])


# Simple Math
# Print the 'Games' matrix
print(Games)
# Access element in the 'Games' matrix
print(Games["LeBronJames", "2012"])
# Print the 'FieldGoals' vector
print(FieldGoals)
# Calculate approximate number of goals per game rounded to 2 decimal points
print(round(FieldGoals / Games, 2))
# Calculate minutes played per game
print(round(MinutesPlayed / Games))
# Calculate salary per game
print(round(Salary / Games))
# Calculate salary per field goal made
print(round(Salary / FieldGoals))

# Error Handling
divide <- function(x, y) {
  # Try to perform division
  result <- tryCatch(x / y,
                     error = function(e) {
                       # Print error message
                       print(paste("Error:", e$message))
                       # Return NA
                       return(NA)
                     })
  # Return result
  return(result)
}
print(divide(10, 2))   
print(divide(10, 0))   