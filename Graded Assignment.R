library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers
str(heights)
x<-mean(heights$height)
ind <- (heights$height)>x
sum(ind)
f <- heights$sex=="Female"
sum(f)
m <- heights$sex=="Male"
sum(m)+sum(f)
ind_f <- ind & f
ind_f
ind_f<-ind & f
sum(ind_f)
mean(f)
min_h <- min(heights$height)
index_min <- match(min_h, heights$height)
index_min
heights$sex[index_min]
head(heights)
names(heights)
heights %>% select(sex, height) %>% filter(height < 50)
heights[c(1000:1050),]
max_h <- max(heights$height)      
max_h 
index_max <- match(max_h, heights$height)
index_max
heights[c(1:100),]
x <- 50:82.7
x
sum(!x %in% heights$height)
ht_cm = heights$height*2.54
heights2 <- mutate(heights, ht_cm = heights$height*2.54)
heights2
m_cm <- mean(ht_cm)
m_cm
heights2 <- filter(heights2, sex == "Female")
heights2
mean(heights2$ht_cm)

#Plots
library(dslabs)
data(olive)
head(olive)
?head
plot(olive$palmitic, olive$palmitoleic)
hist(olive$eicosenoic)
mean(olive$eicosenoic)
boxplot(palmitic~region, data=olive)
