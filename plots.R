# R is incredible at visualizing and creating plots & graphs with
# To create graphs, we need to define objects:

population_in_millions <- murders$population/10^6 # Gives us the total population in units of millions

total_murders <- murders$total

plot(population_in_millions, total_murders) # Creates a plot that shows us that there is a strong relationship between the population and murders

hist(murder_rate) # Easily creates a histogram (bar graph) of the murder rate 
murders$state[which.max(murder_rate)] # Checks to see which state has the highest murder rate

boxplot(murder_rate ~ region, data = murders) # We are comparing the murder rate to the region and also specifying that we want to use the murders dataset
