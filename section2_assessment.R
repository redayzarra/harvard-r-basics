# Question 1

x <- c(2, 43, 27, 96, 18)
rank(x)
sort(x)
order(x)


# Question 2

x <- c(2, 43, 27, 96, 18)
min(x)
which.min(x)
max(x)
which.max(x)


# Question 3

name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

time_hr <- time / 60
names(name) <- time_hr
name


mph <- distance / time_hr
names(name) <- mph
name
