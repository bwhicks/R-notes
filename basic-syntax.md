R Syntax
========

R is derived from the [S programming
language](https://en.wikipedia.org/wiki/S_(programming_language)), which
is an object oriented statistical language developed in the 1970s and
80s at Bell Labs by Rick Beker, Allan Wilks, and John Chambers.

As such, it tends to have more in common with other interpreted
languages you may be familiar with (e.g., Python, Ruby) than other
statistical programming languages.

Many of R's operators will make instinctive sense to you though some may
feel strange.

A simple R script
-----------------

    a <- 1 
    b <- 2
    a+b

    ## [1] 3

In this basic script, we set `a` to `1`, set `b` to `2` and then add
them. You could enter these commands at the R console and produce the
same output.

The `<-` notation is probably new to you. R style tends to use this to
indicate that the output of a function, object, literal (i.e. 1, 'a
string') is being passed to another object.

Like in many programming languages, you can provide descriptive names to
R variables (which are naturally, objects).

    first_name <- 'Benjamin'
    last_name <- 'Hicks'
    cat(first_name, last_name, sep=' ')

    ## Benjamin Hicks

In this example, I created two objects, then passed their value to the
function `cat` which concatenates them (using a space as a separator).

Data types
----------

R is an implicitly-typed language. That means that a variable need not
be declared with a particular type. In C for example, you would have to
create a variable to hold an integer explicitly and that variable would
remain that type.

R on the other hand, attempts to accomodate the data as best it can with
implicit conversions when needed. R has five basic classes of data:
character (string), numeric, integer (whole number), complex (numbers
with i), and logical (TRUE/FALSE)

Stupid vector tricks
--------------------

All of these can be added to the most basic object: a vector. A vector
is series of objects all of the same class. This lets R do some
interesting things without resorting directly to arrays or other tricks
that some programming languages require to handle a series of data.

The `c` function lets you combine objects into a vector.

    a <- c(1, 2, 3)
    b <- c(1, 2, 3)
    a + b

    ## [1] 2 4 6

`a` and `b` are both vectors of the numeric type. When I add them, R
does something you might not expect: it adds their constituent elements.

What happens when types are of multiple different data types?

    a <- c(1, "aardvark", 3.4)
    class(a)

    ## [1] "character"

    a

    ## [1] "1"        "aardvark" "3.4"

R attempts to make a vector using the data type that can best 'hold' all
the values. In this case, "1" and "3.4" could at least be represented as
characters to match the character string "aardvar".

You can do this explicitly too using the `as` functions.

    a <- as.numeric("3.4")
    class(a)

    ## [1] "numeric"

There is an exception to the rule that vectors must be of one type:
lists. These let you hold several different types of object in one
'vector'.

    test_list <- list('a', c(1,3), c(2,4))
    # This is using subset notation to pick the second and third vectors of the
    # list. Then a second notation to pick the first elements in each.
    test_list[[2]][1] + test_list[[3]][1]

    ## [1] 3
