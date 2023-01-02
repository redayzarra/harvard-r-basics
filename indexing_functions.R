# Indexing functions use logical operators to find data indices quickly, these include:


#   1. Which - gives us the entries of the logical vectors that are true

x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE) # Logical vector
which(x) # Gives us the indices of where the TRUE logical operators are located

index <- which(murders$state == "Massachusetts") # Gives us the index where the statement is TRUE, so it gives us the index of where Massachusetts is in the column

murder_rate[index] # We can use this to directly look up Massachusetts' murder rate because we know exactly where it is located.


#   2. match - looks for entries in a vector and gives us the index needed to access them

index2 <- match(c("New York", "Florida", "Texas"), murders$state) # We are asking for the indices of the first vector in the second vector, where are these states in the state column?

index2 # Gives us the indices of New York, Florida, and Texas in the state column

murders$state[index2] # Confirms that they do in fact return the states we wanted

murder_rate[index2] # We can now look up the murder rate for the specified states


#   3. %in% - allows us to check if each element of the first vector is in the second vector

x <- c("a", "b", "c", "d", "e")

y <- c("a", "d", "f")

y %in% x # Gives us a logical vectors of TRUE and FALSE logical that tells us if each element of y is in x or not

c("Boston", "Dakota", "Washington") %in% murders$state # Confirms that Washington is the only state in the first vector
