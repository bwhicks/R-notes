library(rvest)

# Read in the url
guardians_2 <- read_html("http://www.imdb.com/title/tt3896198/")


# Parse the html, selecting the text of <span> tags with the class itemprop
cast <- guardians_2 %>%
    html_nodes(".itemprop span") %>%
    html_text()

# Parse the html, selecting all tags with the class character, then grabbing the
# entire dive, which leaves some stray line breaks and spaces
characters <- guardians_2 %>%
    html_nodes(".character") %>%
    html_nodes("div") %>%
    html_text()

# Use a perl regular expression to remove space characters but preserve breaks
# beween words in character names.
characters <- gsub('\\s?(?![(/a-zA-Z])', '', characters, perl = TRUE)

# make a data frame of it
cast_info <- data.frame(cast, characters)
head(cast_info)