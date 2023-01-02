# A common method in data analysis is to split data into groups and then summarizing for each group, done by the group_by() function

murders %>% group_by(region) # Produces a special data frame called a group data frame which behaves differently with dplyr functions

# A group data frame can be thought of as many different tables into one, they have the same number of columns but not the same number of rows

murders %>%
  group_by(region) %>% # We have grouped the dataset of murders into a group based off the region column
  summarize(median = median(rate)) # The summarize function applies the median to the rate to every group separately
