# To get numeric values from functions, you can use the accessor ($) or the pull function

us_murder_rate <- murders %>% summarize(rate = sum(total) / sum(population) * 100000) # Establishing the murder rate variable

us_murder_rate %>% pull(rate) # us_murder_rate is a dataset, but using pull() we have pulled the numeric value out of the dataset

us_murder_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 100000) %>%
  pull(rate)

us_murder_rate # The object is no longer a dataset, it is now a numeric value that we can work with in other functions


class(us_murder_rate)