# installing and loading the dplyr package
install.packages("dplyr")
library(dplyr)

# adding a column with mutate
library(dslabs)
data("murders")
murders <- mutate(murders, rate = total / population * 100000)

# subsetting with filter
filter(murders, rate <= 0.71)

# selecting columns with select
new_table <- select(murders, state, region, rate)

select(murders, state, abbs)
# using the pipe
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)
head(murders)

grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"), 
                     exam_1 = c(95, 80, 90, 85), 
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = FALSE)
grades

#Exercises
rate <-  murders$total/ murders$population * 100000
murders <- mutate(murders, rank=(rate))
murders


select(murders, state, abb)
filter(murders, state == "New York")
filter(murders, rate, rank<=5)
no_south <- filter(murders, region!="South")
str(murders)
no_south
nrow(no_south)
murders_nw <- data.frame(filter(murders, region %in% c("Northeast", "West")))
murders_nw
nrow(murders_nw)

my_states <- filter(murders, region=="Northeast"|region=="West", rate<1, rank)
my_states
select(my_states, state, rate, rank)  
class(rank)
as.numeric(rank)
class(rank)
as.numeric_version(rank)
mutate(murders %>% select(state, rate, rank) %>% filter(murders, region=="Northeast"|region=="West", rate<1, rank))

murders %>% select(state, region, rate) %>% filter(rate <= 0.71)

murders %>% select(state, rate, rank) %>% filter(rate < 1)
filter(murders, region %in% c('Northeast', 'West') & rate < 1) %>%  select(state, rate, rank)

data(murders)
my_states <- murders %>% mutate(rate =  total / population * 100000, rank = rank(-rate)) %>% filter(region %in% c('Northeast', 'West') & rate < 1) %>%  select(state, rate, rank)
my_states

# a simple scatterplot of total murders versus population
x <- murders$population /10^6
y <- murders$total
plot(x, y)

# a histogram of murder rates
hist(murders$rate)

# boxplots of murder rates by region
boxplot(rate~region, data = murders)

library(dslabs)
data(murders)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
boxplot(population~region, data=murders)
plot(population_in_millions, total_gun_murders)
log10_population <- log(10,population_in_millions)

par("mar")
par(mar=c(1,1,1,1))

log10_total_gun_murders <- log(10,total_gun_murders)
plot(log10_population, log10_total_gun_murders)
log(10,100)

hist(population_in_millions)
murders$population/10^6
population~region
data <- boxplot(population~region)
boxplot(population~region, data=murders)
