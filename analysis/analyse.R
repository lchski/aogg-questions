library(corpus)

aogg_text <- paste(readLines("../aogg.txt"), collapse = "\n")

sentences <- text_split(aogg_text, "sentences")
sentences$text <- gsub('\n', ' ', sentences$text) # replace newlines with spaces

questions <- sentences[grep("?", sentences$text, fixed = TRUE),]
