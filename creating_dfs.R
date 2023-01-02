# Creating data frames with the data.frame function

grades <- data.frame(names = c("John", "Juan", "ReDay", "Ashley"), # The data.frame function allows you to create data frames by taking in vectors as parameters
                     exam_1 = c(23, 34, 1, 100),
                     exam_2 = c(24, 54, 0, 100))

grades # The new data frame is created

class(grades$names) # Mine is fine, it says that the class is character which is correct but usually you should add:


grades <- data.frame(names = c("John", "Juan", "ReDay", "Ashley"),
                     exam_1 = c(23, 34, 1, 100),
                     exam_2 = c(24, 54, 0, 100),
                     stringsAsFactors = FALSE) # Makes sure that our strings don't get automatically converted into factors
