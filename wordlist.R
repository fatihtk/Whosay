#Getting necessary words from website
love <- map(.x = 1:18, .f = function(x) {
  url <- paste0("http://www.thesaurus.com/browse/love")
  read_html(url) %>%
    html_nodes('.e1s2bo4t1') %>%
    html_text() %>%
    as.data.frame()
}) %>% do.call(rbind, .)

love <- unique(love)

sadness <- map(.x = 1:18, .f = function(x) {
  url <- paste0("http://www.thesaurus.com/browse/sadness")
  read_html(url) %>%
    html_nodes('.e1s2bo4t1') %>%
    html_text() %>%
    as.data.frame()
}) %>% do.call(rbind, .)

sadness <- unique(sadness)

regret <- map(.x = 1:18, .f = function(x) {
  url <- paste0("http://www.thesaurus.com/browse/regret")
  read_html(url) %>%
    html_nodes('.e1s2bo4t1') %>%
    html_text() %>%
    as.data.frame()
}) %>% do.call(rbind, .)

regret <- unique(regret)

longing <- map(.x = 1:18, .f = function(x) {
  url <- paste0("http://www.thesaurus.com/browse/longing")
  read_html(url) %>%
    html_nodes('.e1s2bo4t1') %>%
    html_text() %>%
    as.data.frame()
}) %>% do.call(rbind, .)

longing <- unique(longing)

loneliness <- map(.x = 1:18, .f = function(x) {
  url <- paste0("http://www.thesaurus.com/browse/loneliness")
  read_html(url) %>%
    html_nodes('.e1s2bo4t1') %>%
    html_text() %>%
    as.data.frame()
}) %>% do.call(rbind, .)

loneliness <- unique(loneliness)

joy <- map(.x = 1:18, .f = function(x) {
  url <- paste0("http://www.thesaurus.com/browse/joy")
  read_html(url) %>%
    html_nodes('.e1s2bo4t1') %>%
    html_text() %>%
    as.data.frame()
}) %>% do.call(rbind, .)

joy <- unique(joy)

inspiration <- map(.x = 1:18, .f = function(x) {
  url <- paste0("http://www.thesaurus.com/browse/inspiration")
  read_html(url) %>%
    html_nodes('.e1s2bo4t1') %>%
    html_text() %>%
    as.data.frame()
}) %>% do.call(rbind, .)

inspiration <- unique(inspiration)

#Saving worldlists as a text file
write.table(love, file = "love.txt", sep = "\t",
            row.names = FALSE , col.names = FALSE)

write.table(sadness, file = "sadness.txt", sep = "\t",
            row.names = FALSE , col.names = FALSE)

write.table(regret, file = "regret.txt", sep = "\t",
            row.names = FALSE , col.names = FALSE)

write.table(longing, file = "longing.txt", sep = "\t",
            row.names = FALSE , col.names = FALSE)

write.table(loneliness, file = "loneliness.txt", sep = "\t",
            row.names = FALSE , col.names = FALSE)

write.table(joy, file = "joy.txt", sep = "\t",
            row.names = FALSE , col.names = FALSE)

write.table(inspiration, file = "inspiration.txt", sep = "\t",
            row.names = FALSE , col.names = FALSE)