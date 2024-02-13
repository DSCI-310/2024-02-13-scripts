# you can download titanic.csv using
# curl https://raw.githubusercontent.com/ttimbers/rscript-demo/main/data/titanic.csv -o titantic.csv

# author: Daniel Chen

"This script calculates the mean for a specific column in the titantic.csv dataset

Usage: 02-titanitc_script.R <var>
" -> doc

suppressMessages(suppressWarnings(library(tidyverse)))
library(docopt)

opt <- docopt(doc)

#print(opt$var)


main <- function(var) {

  # read in our data
  data <- suppressMessages(read_csv("titanic.csv"))

  out <- data |>
    pull(!!var) |>
    mean(na.rm = TRUE)

  print(out)
  saveRDS(out, "mean.RDS")
}

main(opt$var)
