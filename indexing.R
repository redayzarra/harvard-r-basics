# Indexing allows you to use logicals to index vectors. We can use logical operators to index vectors.

library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population * 100000

index <- murder_rate <= 0.71 # We are finding the indices where our given statement is true, where is the murder rate less than or equal to 0.71

index # Gives us vectors of logical operators such as TRUE and FALSE

murders$state[index] # Gives us all the states with the given index blueprint

sum(index) # Counts how many entries are TRUE because R automatically coerces the TRUE logical into 1 and the FALSE operators into 0

index2 <- murder_rate <= 1 & murders$region == "West" # We can use the and ($) operator to add multiple conditions that have to be true at the same time
index2

murders$state[index2] # Gives us a list of states that has a murder rate less than or equal to 1 and is in the Western region