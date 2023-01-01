# Variables can have different types. The 'class' function can help us determine the type of an object.

a <- 2
class(a) # The result confirms that a is numeric

class(ls) # The result confirms that ls is a function


# The most common way of storing data sets is with data frames:
# Think of data frames as data tables:
#   - Rows are like observations
#   - Columns are like different variables
# Data frames are useful for data sets because we can combine different types into one single object

library(dslabs) # Importing the dslabs library
data(murders) # Loading the murders dataset
class(murders) # Then tell us the class of the murders data frame


# The function str, stands for structure, it shows us the structure of the object

str(murders) # Gives us the structural info on the object, like that its a data frame with 51 observations and 5 variables

head(murders) # Gives us the first six lines of the data frame using the head function


# To access different variables or columns, we must use the dollar sign symbol, or the accessor -> $
# The order of the entries from the accessor ($) preserves the orders of the rows from our data table
# The object produced from the accessor, is a vector or an array

murders$population # Gives us the column associated with the population label, given to us by str

names(murders) # Gives us the names of the five columns or variables, we can use accessor($) to access those columns

pop <- murders$population # Assigns the variable pop to the column labeled population

length(pop) # Gives us the length of the variable pop which is 51

class(pop) # Tells us the class of pop which is a numeric because it stores numbers


# Character vectors are distinguished from variables and character strings from "quotes"
# All entries in a character vector need to be characters

b <- 1
b # Returns the number 1

b <- "b"
b # Now it returns the character "b" not the variable

class(murders$state) # Returns character because the state column has all character strings for values


# Logical vectors

