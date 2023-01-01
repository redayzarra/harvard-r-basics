# Variables can have different types. The 'class' function can help us determine the type of an object.

a <- 2
class(a) # The result confirms that a is numeric

class(ls) # The result confirms that ls is a function


# The most common way of storing data sets is with data frames:
# Think of data frames as data tables:
#   - Rows are like observations
#   - Columns are like different variables

# Data frames are useful for data sets because we can combine different types into one single object

library(dslabs)
data(murders)
class(murders)