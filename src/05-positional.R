# you can download titanic.csv using
# curl https://raw.githubusercontent.com/ttimbers/rscript-demo/main/data/titanic.csv -o titantic.csv

# curl https://swcarpentry.github.io/r-novice-gapminder/data/gapminder-FiveYearData.csv -o gapminder.csv

# author: Daniel Chen

"This script calculates the mean for a specific column in the titantic.csv dataset

Usage: 05-positional.R --file_path=<file_path> --var=<var>

Options:
--file_path=<file_path>    Path to the data file
--var=<var>                Unquoted column name for the numerical vector
" -> doc

suppressMessages(suppressWarnings(library(tidyverse)))
library(docopt)

opt <- docopt(doc)

#print(opt$var)


main <- function(file_path, var) {

  # read in our data
  data <- suppressMessages(read_csv(file_path))

  out <- data |>
    pull(!!var) |>
    mean(na.rm = TRUE)

  print(out)
  saveRDS(out, "output/mean.RDS")
}

main(opt$file_path, opt$var)
