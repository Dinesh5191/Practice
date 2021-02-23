# defining murder rate as before
murder_rate <- murders$total / murders$population * 100000
# creating a logical vector that specifies if the murder rate in that state is less than or equal to 0.71
index <- murder_rate <= 0.71
index
# determining which states have murder rates less than or equal to 0.71
murders$state[index]
# calculating how many states have a murder rate less than or equal to 0.71
sum(index)

# creating the two logical vectors representing our conditions
west <- murders$region == "West"
safe <- murder_rate <= 1
# defining an index and identifying states with both conditions true
index <- safe & west
murders$state[index]

#Indexing Functions
x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
which(x)    # returns indices that are TRUE

# to determine the murder rate in Massachusetts we may do the following
index <- which(murders$state == "Massachusetts")
index
murder_rate[index]

# to obtain the indices and subsequent murder rates of New York, Florida, Texas, we do:
index <- match(c("New York", "Florida", "Texas"), murders$state)
index
murders$state[index]
murder_rate[index]

x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")
y %in% x
class(x)
# to see if Boston, Dakota, and Washington are states
c("Boston", "Dakota", "Washington") %in% murders$state

#Exercises
low <- murder_rate<1
low
which(low)
murder_rate[low]
murders$state[low]
ind <- murders$region == "Northeast" & low
ind
murders$state[ind]
avg <- mean(murder_rate)
avg
avg <- murder_rate <= avg
avg
sum(avg)

abbs <- c("AK", "MI", "IA") 
class(abbs)
ind <- match(c(abbs, murders$abb))
ind
abbs <- c("MA", "ME", "MI", "MO", "MU")
ind <- which(!abbs %in% murders$abb)
abbs[ind]
x=10
log(exp(x))
