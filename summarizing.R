rm(list = ls())
# Summarizing data is an important part of data analysis and uses operations such as group_by and summarize to analyze the median, mean, and standard deviation.

library(tidyverse)
library(dslabs)

data(murders)


# Summarize function in dyplyr allows us to see summary statistics in a intuitive and readable way

murders <- mutate(murders, rate = murders$total / murders$population * 100000, rank = rank(-rate))

stats <- murders %>% filter(region == "West") %>% # We are using the murders dataset from above and piping it into the filter function to only look at the data from Western regions
                     summarize(minimum = min(rate), # We are then using the summarize function to create a summarized table where we find the minimum value in the rate column and storing it in variable minimum...
                               median = median(rate), # We are using the median function to find the median of the rate column and storing it in the variable median...
                               maximum = max(rate)) # We are using the max function to find the maximum value in the rate column and storing it in the variable maximum

stats$minimum # We can now call on these functions whenever we like because they are stored away in the summarized data table

us_murder_rate <- murders %>% summarize(rate = sum(total) / sum(population) * 100000)

us_murder_rate
