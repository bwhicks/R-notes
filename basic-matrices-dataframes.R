# Ex. 1 - a matrix
demo_matrix <- matrix(
    c(2, 4, 3, 1, 5, 7, 2, 9, 8),
    nrow=3,
    ncol=3,
    byrow = TRUE # Fill
)

demo_matrix
demo_matrix[2,3] # Row, column subsetting

# Ex. 2- a dataframe
a_number = c(1, 2, 3)
a_character = c("foo", "bar", "baz")
a_boolean = c(TRUE, FALSE, FALSE) # Booleans
df = data.frame(a_number, a_character, a_boolean)
df

# Ex. 3 - tricks with the previous dataframe
df[1,2] # row 1, column 2
df$a_number # the entire row
subset_df <- df[which(df$a_boolean == FALSE),]
subset_by_column <- df[c('a_number', 'a_boolean')]
