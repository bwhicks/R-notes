data(mtcars)
library(ggplot2)

# qplot is a 'quick plot function that takes a data frame (or matrix), a setting
# 'geom' (here a point plot and a smooth line for a regression)
qplot(wt, mpg, data=df, geom=c('smooth', 'point'),
      color=cyl,
      main="Regression of MPG on Weight",
      xlab="Weight", 
      ylab="Miles per Gallon"
)
      

# A more complex example
# Note that cylinders are a 'factor', they come in 4, 6, and 8

# sapply applies a function to every value in a column
df$cyl <- sapply(df$cyl, as.factor)

# ggplot2's more complex functionality works like this
ggplot(df, aes(wt, mpg, color=cyl)) + # Base plot info, including aes to set values
    geom_point() + # Point plot
    geom_smooth(method='lm') # smooth, setting the model to a simple linear regression