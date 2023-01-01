rm(list = ls())

# Often times, the max number of murders does not always mean most dangerous because certain states could have a higher population.
# For this, we need to rank by rates of murder and not by just the max

library(dslabs)
data(murders)

murders$state[which.max(murders$population)] # Gives us the state with the most population, which is California.

max(murders$population) # The max value of population


# As expected, California has the most murders because it has the highest population. We should be looking at the murders per capita.
# In R, arithmetic operators occur element-wise. Meaning, 

heights <- c(69, 454, 435, 5, 34, 523, 4, 32, 4, 4, 32, 453, 2, 43, 24, 3, 24, 23)

heights * 2.54 # We get each element multiplied by 2.54, effectively converting the array from inches to cm.

heights - 69 # Subtracts 69 from each element in the vector


# We can also do this with different vectors meaning that we can easily compute the murder rate with:

murder_rate <- (murders$total / murders$population) * 100000 # The object murder_rate is storing the result of the total murders divided by the population, times 100000 for units
murder_rate

mr_ind <- order(murder_rate) # We are finding the indices to put the murder_rate in order
murders$state[mr_ind] # Applying those indices to the states to see which one has the highest murder rate

mr_max <- which.max(murder_rate)
murders$state[mr_max] # District of Columbia has the highest murder rate

murders$state[order(murder_rate, decreasing =TRUE)] # Gives us the states ranked in murder rates from highest to lowest
