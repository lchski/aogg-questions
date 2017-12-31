library(corpus)

# load the text
aogg_text <- paste(readLines("../aogg.txt"), collapse = "\n")

# extract the questions
sentences <- text_split(aogg_text, "sentences")
sentences$text <- gsub('\n', ' ', sentences$text) # replace newlines with spaces

# extract just sentences with question marks in them
questions <- sentences[grep("?", sentences$text, fixed = TRUE),]

# output the questions to a CSV
write.csv(questions, "../aogg_questions.csv")
