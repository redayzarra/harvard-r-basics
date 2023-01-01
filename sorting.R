rm(list = ls())

# Sorting allows us to rank values in a specific way

library(dslabs)
data(murders)

sort(murders$total) # The sort function sorts a vector in increasing order, but gives no information about the states


# To sort in a way where we also get information about the other variables, we can use the order function

x <- c(31, 4, 15, 92, 65)
x

index <- order(x) # Returns the indices to sort that vector, meaning you can apply those indices anywhere to put in order
index
x[index] # Returns the vector x in the given sorted indices


# Using the order function, we can sort the states with their total murder in increasing order

indices <- order(murders$total) # Gives the indices of values in the vector total, basically a blueprint to put them in order
murders$state[indices] # Apply the indices to the state vector to reorder the states based on their total murders
murders$abb[indices]


# To find the largest value in any vector, we can use these functions:

max(murders$total) # Gives us the largest value in the vector
indexmax <- which.max(murders$total) # Gives us the index of the largest value in the vector

murders$state[indexmax] # Tells us which state has the most murders


# To find the smallest value in any vector, we can use something similar:

min(murders$total) # Gives us the smallest value in the vector
indexmin <- which.min(murders$total) # Gives us the index of the smallest value in the vector

murders$state[indexmin] # Tells us which state has the least murders


# Ranks give you a vector with the rank of the entries

x <- c(31, 4, 15, 92, 65)

rank(x) # Tells you what rank each number is in the vector, 31 is the 3rd smallest... 4 is the 1st smallest, etc.
