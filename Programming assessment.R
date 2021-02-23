x <- c(1,2,-3,4)
if(all(x>0)){
  print("All Positives")
} else{
  print("Not All Positives")
}

z <- c(TRUE, FALSE) 
all(z)
any(!z)

new_names<-ifelse(nchar(murders$state)>8, murders$abb, murders$state)
new_names

# creating a function that computes the sum of integers 1 through n
sum_n <- function(n){
  x <- 1:n
  sum(x)
}
sum_n(5000)

#plotting
altman_plot <- function(x,y){
  plot(x+y, y-x)
}
altman_plot(1,100)

#lexical scope
x <- 3
my_func <- function(y){
  x <- 5
  y+5
}
print(x)

x <- 3
my_func <- function(y){
  x <- 5
  y
  print(x)
}
my_func(x)


compute_s_n<-function(n){
  x<-1:n
  sum(x^2)
  }
compute_s_n(10)

compute_s_n <- vector("numeric", 25)
n <- 25
for(i in 1:n){
  x <- 1:i
  s_n[i] <- sum(x)
}
compute_s_n(25)

results <- vector("numeric", 10)
n <- 10
for(i in 1:n){
  x <- 1:i
  results[i] <- sum(x)
}
compute_s_n <- function(n){
  x <- 1:n
  s_n<-sum(x)
}
compute_s_n(25)


# Define a function and store it in `compute_s_n`
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}

# Create a vector for storing results
s_n <- vector("numeric", 25)

# write a for-loop to store the results in s_n
for(i in 1:25){
  s_n[n] <- compute_s_n(n)
}
n <- 1:25
plot(n, s_n)

identical(s_n, (n*(n+1)*(2*n+1))/6)
          
          