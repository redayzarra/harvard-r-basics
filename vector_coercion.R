# When an entry does not match the expected, R tries to guess what we meant before showing an error.

x <- c(1, "canda", 3) 

class(x) # We should expect to see an error here, because the vector isn't numeric or character, but we get character

x # R has automatically converted the numbers we assigned into character strings. R coerced the data into character strings.


# There are many functions to force a specific data coercion

y <- 1:5 # Generates number 1 through 5
z <- as.character(y) # Can turn numbers into characters 
z # Stores a copy of the numeric vector y with character strings from 1 to 5

a <- as.numeric(z) # Can turn characters back into numbers
a # Stores a copy of vector z but all the number character strings are actually numbers again
