# We may create vectors of class numeric or character with the concatenate function
codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")
codes
codes <- c(italy = 380, canada = 124, egypt = 818)
codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)
codes
class(codes)
codes <- c(380, 124, 818)
country <- c("france","canada","egypt")
names(codes) <- country
codes
range(0,10)
seq(0,10)
codes[1]<-("india=590")
codes
x<-codes$france
codes[c(1,3)]
codes[1:2]
codes[c("canada")]
codes[c("egypt","italy")]
x <- c(1, "canada", 3)
x
x<-1:5
y<-as.character(x)
y
as.numeric(y)
temp <- c("Beijing"=35, "Lagos"=88, "Paris"=42, "Rio de Janeiro"=84, "San Juan"=81, "Toronto"=30)
temp
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city
names(temp) <- city
temp[1:3]
temp[c(3,5)]
x <- 12:73
x
length(x)
seq(1, 100, 2)
length(seq(6, 55, 4/7))
seq(6, 55, 4/7)
pop <- murders$population
a <- seq(1, 10, length.out = 100)
class(a)
a
class(3L)
x <- c(1, 3, 5,"a")
x <- as.numeric(x) 
library(dslabs)
data(murders)
sort(murders$total)
x <- c(31, 4, 15, 92, 65)
x
sort(x)    # puts elements in order

index <- order(x)    # returns index that will put x in order
x[index]    # rearranging by this index puts elements in order
order(x)
murders$state[1:10]
murders$abb[1:10]

index <- order(murders$total)
murders$abb[index]    # order abbreviations by total murders

max(murders$total)    # highest number of total murders
i_max <- which.max(murders$total)    # index with highest number of murders
murders$state[i_max]    # state name with highest number of total murders

x <- c(31, 4, 15, 92, 65)
x
rank(x)    # returns ranks (smallest to largest)
pop <- murders$population
pop
pop <- sort(pop)
pop
pop[1]
ord <- order(pop)
min(ord)
pop[ord]
order(ord)
order(pop)
ord
ord <- order(pop)
ord
pop <- murders$population
ord <- order(pop)
ord
i<-which.min(murders$population)
states <- murders$states
states(i)
i(states)
i <- murders$states
i
library(dslabs)
data(murders)
i<-which.min(murders$population)
i
state <- murders$state
state[i]
states <- murders$state
ranks <- rank(murders$population)
my_df <- data.frame(states,ranks)
my_df
ind <- order(murders$population)
ind
states[ind]
my_df <- data.frame(states[ind],ranks[ind])
my_df
my_df <- data.frame(states = states[ind], rank = ranks[ind])
my_df
my_df <- data.frame(states = states[ind], ranks = ranks[ind])
library(dslabs)
data(na_example)
str(na_example)
mean(na_example)
ind <- is.na(na_example)
sum(ind)
na_example[!ind]
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
mean(na_example)
mean(na_example[!ind])

# The name of the state with the maximum population is found by doing the following
murders$state[which.max(murders$population)]

# how to obtain the murder rate
murder_rate <- murders$total / murders$population * 100000
murders$state[which.max(murder_rate)]
# ordering the states by murder rate, in decreasing order
murders$state[order(murder_rate, decreasing=TRUE)]
temp <- c(35, 88, 42, 84, 81, 30)
temp <- 5/9 * (temp-32)
temp
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
city_temps
x <- seq(1, 100)
sum(x)
sum(1/x^2)
murder_rate <- murders$total / murders$population * 100000
mean(murder_rate)
x <- c(2, 43, 27, 96, 18)
rank(x)
order(x)
min(x)
which.min(x)
max(x)
which.max(x)

name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
time <- time/60
speed <- distance/time
speed
time
speed <- distance/time
speed
time(4)/60
