# The dot placeholder is a way of accessing the data frame being piped

us_murder_rate <- murders %>%
  summarize(rate = sum(total) / sum(population) * 100000) %>%
  .$rate # The dot placeholder allows us to see the data and access it with the accessor($)

us_murder_rate

class(us_murder_rate)