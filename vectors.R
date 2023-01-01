# Vectors are the most basic ways to store data in R. Complex datasets can be broken down into vectors.
# For example, in the murders data frame each column can be broken down into a vector.

# There are many ways to create vectors, for example the function c which stands for concatenate

codes <- c(380, 124, 818) # Defining an object called codes with 3 numeric value for country codes
class(codes)

country <- c("italy", "canada", "egypt") # Defining an object called country that stores the character strings for country names
class(country)

codes2 <- c(italy=380, canada=124, egypt=818) # Codes2 stores numeric objects that have values assigned to them
codes2
class(codes2) # The class of codes2 is numeric because the objects inside store numeric values

codes3 <- c("italy"=380, "canada"=124, "egypt"=818) # Produces the same result as the code above
codes3
class(codes3)


# The names function can be used to assign names to the entries of vectors

codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")
names(codes) <- country # Assigns the entries of codes, so 380, 124, 818, to the countries stored in the object country