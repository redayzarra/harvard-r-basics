# It is very useful to sort the table using the values in different columns, ordering entire tables can be done by the dplyr arrange() function

library(dplyr)

murders %>% arrange(population) %>% head() # We arranged the table by population (lowest to highest) and then used the head() function to get the first 6 rows

murders %>% arrange(rate) %>% head() # Now we are arranging the data by the murder rate and looking at the top six rows


# To sort any vector in descending order we can use the dplyr function, desc() to transform the vector into descending order

murders %>% arrange(desc(rate)) %>% head() # We used the desc() function to arrange the murder rate from highest to lowest and looked at only the top six rows


# We used the head() function to just look at the top six rows, but to show a custom number of rows we can use the top_n() function

murders %>% top_n(10, rate) # Now we can look at the top 10 rows of the murder rate column but THEY ARE NOT SORTED!

murders %>% arrange(desc(rate)) %>% top_n(10)
