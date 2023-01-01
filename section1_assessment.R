# Question 1

a <- 2
b <- -1
c <- -4
(-b + sqrt(b^2 - 4*a*c)) / (2*a)

(-b - sqrt(b^2 - 4*a*c)) / (2*a)


# Question 2

log(1024, base = 4)


# Question 3a

library(dslabs)
data("movielens")

str(movielens)

class(movielens$title)

class(movielens$genres)

nlevels(movielens$genres)
