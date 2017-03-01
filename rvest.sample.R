library(rvest)

guardians_2 <- read_html("http://www.imdb.com/title/tt3896198/")

cast <- guardians_2 %>%
    html_nodes(".itemprop span") %>%
    html_text()

characters <- guardians_2 %>%
    html_nodes(".character") %>%
    html_nodes("div") %>%
    html_text()

characters <- gsub('\\s?(?![(/a-zA-Z])', '', characters, perl = TRUE)

cast_info <- data.frame(cast, characters)
head(cast_info)