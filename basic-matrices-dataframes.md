# Matrices and Data Frames
Benjamin Hicks  
2/27/2017  
# Examples using matrices and dataframes

R has two other powerful tools for holding data. One you've probably seen in 
math class at some point.

## Matrices

```r
demo_matrix <- matrix(
    c(2, 4, 3, 1, 5, 7, 2, 9, 8),
    nrow=3,
    ncol=3,
    byrow = TRUE # Fill
)

demo_matrix[2,3] # Row, column subsetting
```

```
## [1] 7
```

Matrices must be of one data type, and they can only be referenced by row, column
subsetting. (Nice bonus: `demo_matrix[,3]` would select the entire third column.)


## Data Frames

The inherent limitation of the matrix for holding a large, complex dataset is
part of why the data frame, an intrinsic part of R, is one of its most powerful
features. (Though there are Python packages such as Pandas that give you similar
functionality.)


```r
# Ex. 1 - a matrix
demo_matrix <- matrix(
    c(2, 4, 3, 1, 5, 7, 2, 9, 8),
    nrow=3,
    ncol=3,
    byrow = TRUE # Fill
)

demo_matrix
```

```
##      [,1] [,2] [,3]
## [1,]    2    4    3
## [2,]    1    5    7
## [3,]    2    9    8
```

```r
demo_matrix[2,3] # Row, column subsetting
```

```
## [1] 7
```

```r
# Ex. 2- a dataframe
a_number = c(1, 2, 3)
a_character = c("foo", "bar", "baz")
a_boolean = c(TRUE, FALSE, FALSE) # Booleans
df = data.frame(a_number, a_character, a_boolean)
df
```

```
##   a_number a_character a_boolean
## 1        1         foo      TRUE
## 2        2         bar     FALSE
## 3        3         baz     FALSE
```

```r
# Ex. 3 - tricks with the previous dataframe
df[1,2] # row 1, column 2
```

```
## [1] foo
## Levels: bar baz foo
```

```r
df$a_number # the entire row
```

```
## [1] 1 2 3
```

```r
subset_df <- df[which(df$a_boolean == FALSE),]
subset_by_column <- df[c('a_number', 'a_boolean')]
```
