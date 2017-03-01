# Ex. 1 - Setting objects to use as variables, then printing the result to the 
# console
a <- 1 
b <- 2
a+b

# Ex. 2 - Showing how to concatenate data of type character
first_name <- 'Benjamin'
last_name <- 'Hicks'
cat(first_name, last_name, sep=' ')

# Ex. 3 - Demonstrating adding two numeric vectors of equal length
a <- c(1, 2, 3)
b <- c(1, 2, 3)
a + b

# Ex. 4 - Demonstarting implicit coercion of numeric (1, 3.4)
# to character in a vector with a character elements ("aardvark")
a <- c(1, "aardvark", 3.4)
class(a)
a

# Ex. 5 - Demonstrating explicit coercion/type conversion
a <- as.numeric("3.4")
class(a)

# Ex. 6 - Demonstrating lists and their ability to hold more than one type of item
test_list <- list('a', c(1,3), c(2,4))
# This is using subset notation to pick the second and third vectors of the
# list. Then a second notation to pick the first elements in each.
test_list[[2]][1] + test_list[[3]][1]