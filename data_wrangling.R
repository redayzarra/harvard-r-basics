# We have been manipulating vectors but to manipulate data tables we will need the dplyr package

library(dplyr) # The package introduces functions that perform the most common operations for data manipulations
data("murders")


murders <- mutate(murders, murder_rate) # The function mutate allows us to add to the data table, it takes the name of the data frame first and then the variable in the second
murders


filter(murders, murder_rate <= 0.71) # The function filter allows you to filter the data table to show us data that follows our specific argument, it takes the name of the data frame first and then the conditional statement next


new_table <- select(murders, state, region, murder_rate) # The function select you to select columns that you want to look at, it takes the name of the data frame first and then the columns you want to select next


filter(new_table, murder_rate <= 0.71) # Use the new table to only show us the data where the murder rate is less than 0.71


murders %>% select(state, region, murder_rate) %>% filter(murder_rate <= 0.71) # The pipe (%>%) takes the result of a function and inputs it into the next one
