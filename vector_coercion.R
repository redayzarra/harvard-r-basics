# When an entry does not match the expected, R tries to guess what we meant before showing an error.

x <- c(1, "canda", 3) 

class(x) # We should expect to see an error here, because the vector isn't numeric or character, but we get character

x # R has automatically converted the numbers we assigned into character strings
