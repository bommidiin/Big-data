x <- rnorm(5)
x

N<-100000
a<-rnorm(N)
b<-rnorm(N)
c<-a*b
c

x<-rnorm(5)
x<-rnorm(5,10,1)
x<-rnorm(5,10)
x<-rnorm(5, mean=10, sd=1)
x<-rnorm(5, sd=1, mean=10)
x<-rnorm(5, sd=1)
x<-rnorm(10)
plot(x)
hist(x)
x

x<-rnorm(10, 2, 15)
plot(x)
hist(x)
x

x <-rnorm(80000)
plot(x)
hist(x)
head(x)
tail(x)
range(x)
summary(x)
boxplot(x)
x

x <-rnorm(100000)
# count how many are between -1 and 1
count <- 0
for (i in x)
  if (i>-1 & i<1)
    count <- count+1
# Get and print the percentage, should be around 68%
percent <- count/length(x)
percent
x
