# We can obtain the min, median, and maximum with the quantile() function

my_quantile <- function(x) { # Stores the function in the variable my_quantile
  r <- quantile(x, c(0, 0.5, 1)) # The quantile function, which is stored in the variable r, is looking for the 0th (min) value, the 0.5th (median), and the 1st (max) value
  data.frame(minimum = r[1], median = r[2], maximum = r[3]) # The data.frame function builds a data frame that creates columns and stores the individual values from r
}

murders %>% # Use the murders dataset
  filter(region == "West") %>% # Filter the data and only use the data from the "West" region column value
  summarize(my_quantile(rate)) # Take the data and run the rate column through the my_quantile function from above