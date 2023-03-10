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
codes


# The seq function, which stands for sequence, generates sequences based on what we asked it to do

seq(1, 10) # Writes the numbers 1 through 10

seq(1, 10, 2) # Generates the numbers 1 through 10 but in increments of 2, so 1 + 2 so 3. Basically, all odd numbers from 1 to 10

1:10 # Shorthand for generating consecutive integers, basically a range from 1 to 10


# Subsetting lets us access specific parts of vectors
# Indices in R start from 1

codes[2] # Allows us to see the index of specific vectors

codes[c(1,3)] # A multi-entry vector allows us to access multiple indices at once, we're creating vector storing 1 and 3 and accessing with that

codes[1:2] # Sequences can be used to access specific parts of vectors, in this case indices 1 to 2 in vector codes

codes["canada"] # Access entries with the names if you know the names of the entry

codes[c("egypt", "italy")] # We can also pass in a vector of names to get the specific entries with those names
