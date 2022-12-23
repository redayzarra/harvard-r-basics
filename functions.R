# R has a lot of predefined functions, and many can be added through
# packages. Functions do not appear in the work space but are ready for use.

ls # Just typing ls gives us the entire code ls which is useless
ls() # Now the function is actually being used

log(8) # Some functions require arguments, while others can just be called

a <- 10 # Assigning variable a to 10
log(a) # Functions can execute with variables as parameters


# Nested functions...

exp(1) # Basically means e^1

log(exp(1)) # Inner function is being evaluated first, then the outer

help("log") # Allows us to access the documentation for functions
?log # Same thing as above

args(log) #Tells us the arguments that the log function needs

log(8, base = 2) # Gives us the log2(8) which just means 2^? = 8

log(8, 2) # You don't have to specify the base, arguments assigned in order

2^3 # This function does not need parentheses

?"+" # Gives us the documentation for all mathematical operators


# Data sets...

data() # Gives us a list of all the prebuilt datasets in R
CO2 # Opens the built-in data set for CO2 emissions

pi # Built-in variable for pi
Inf # Built-in variable for infinity


# Variable names...

solution_1 <- (-b + sqrt(b^2 - 4*a*c)) / (2*a) # Assigns the result to it
solution_2 <- (-b - sqrt(b^2 - 4*a*c)) / (2*a)